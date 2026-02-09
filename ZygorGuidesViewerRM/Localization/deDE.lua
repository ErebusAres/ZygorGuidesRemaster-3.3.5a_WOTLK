if GetLocale()~="deDE" then return end

-- These are the main viewer's lines.

local COLOR_TIP_MOUSE = "|cffeedd99"
local COLOR_TIP_HINT = "|cff99ff00"
local COLOR_TIP = "|cff00ff00"

ZygorGuidesViewer_L("Main", "deDE", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor Guides Viewer",
	["desc"] = "Main settings for Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "%d guides are loaded.",

	["opt_guide"] = "Select a guide:",
	["opt_guide_steps"] = "Steps: %d",
	["opt_guide_author"] = "Author: %s",
	["opt_guide_next"] = "Next in series: %s",

	["opt_report"] = "Report a buggy step",
	["opt_report_desc"] = "Create a bug report containing the details of the currently displayed step. Copy/paste it and email to the guide authors.",

	["opt_visible"] = "Show the Zygor Guides Viewer window",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "Hide guides in combat",
	["opt_hideincombat_desc"] = "Hide all guide windows during combat, if your screen gets too cramped.",
	
	--["opt_group_main"] = "Main window settings",
	["opt_opacitymain"] = "Opacity",
	["opt_opacitymain_desc"] = "Opacity of the main Viewer window.",
	["opt_framescale"] = "Scale",
	["opt_framescale_desc"] = "You can resize the window to match your preferences.",
	["opt_fontsize"] = "Text scale",
	["opt_fontsize_desc"] = "Set your preferred text size. Note that the window scale affects this, too.",
	["opt_fontsecsize"] = "Secondary text scale",
	["opt_fontsecsize_desc"] = "Set your preferred secondary text size, used to display additional descriptions and notes.",
	["opt_backcolor"] = "Background colour",
	["opt_backcolor_desc"] = "The background colour of the window.",

	["opt_group_window"] = "Window features",
	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Resize upwards",
	["opt_miniresizeup_desc"] = "Flips the window upside-down, making it expand upwards, instead of downwards. Useful if you're placing it at the bottom of your screen.",
	["opt_opacitymini"] = "Background opacity",
	["opt_opacitymini_desc"] = "Opacity of step window background.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_showcountsteps"] = "Show steps:",
	["opt_showcountsteps_desc"] = "Number of steps to show.\n|cffffffaaAll|r displays all steps in a scrollable list.\n|cffffffaa1-5|r shows the current step at the top, and auto-resizes the window to show several future steps only.",
	["opt_showcountsteps_all"] = "All",

	["opt_group_map"] = "Waypoints",
	["opt_group_map_desc"] = "These settings govern how Zygor Guides Viewer interacts with map-handling addons.",
	["opt_group_map_waypointing"] = "Waypointing addon",
	["opt_group_map_waypointing_desc"] = "Select the addon that you'd like to handle the waypoints for Zygor Guides Viewer.",
	["opt_group_addons_builtin"] = "Built-in waypointing",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "none",
	["opt_debug"] = "Debug",
	["opt_debug_desc"] = "Display debug info.",
	["opt_debugging"] = "Debugging",
	["opt_debugging_desc"] = "Debugging options.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	["opt_autoskip"] = "Advance automatically",
	["opt_autoskip_desc"] = "Automatically skip to the next step, when all conditions are completed. You might still have to manually skip some steps that have completion conditions too complex for the guide to detect reliably.",

	["opt_goalicons"] = "Show step line icons",
	["opt_goalicons_desc"] = "Display icons reflecting completion status.",
	["opt_goalcolorize"] = "Color completed step lines",
	["opt_goalcolorize_desc"] = "When completing step lines, colorize them entirely green.",
	["opt_goalbackprogress"] = "Apply colors as completion percentage",
	["opt_goalbackprogress_desc"] = "Show partial completion as intermediary colors between the incomplete and complete colors.|nIf off, objectives are displayed only using 'incomplete' or 'complete' colors.",

	["opt_group_step"] = "Step objectives",

	["opt_goalbackcolor_desc"] = "Completion colors:",
	["opt_goalbackgrounds"] = "Color backgrounds",
	["opt_goalbackgrounds_desc"] = "Color step line backgrounds to reflect completion status.",
	["opt_goalbackcomplete"] = "Complete",
	["opt_goalbackcomplete_desc"] = "Use this color to indicate completed objectives.",
	["opt_goalbackincomplete"] = "Incomplete",
	["opt_goalbackincomplete_desc"] = "Use this color to indicate incomplete objectives.",
	["opt_goalbackimpossible"] = "Impossible",
	["opt_goalbackimpossible_desc"] = "Use this color to indicate objectives impossible to complete at this time.",

	['opt_tooltipsbelow'] = "Show extra information inline",
	['opt_tooltipsbelow_desc'] = "Extra information about certain step lines can be displayed either inline, or as tooltips shown on mouseover.",

	["opt_flash_desc"] = "Progress notification:",
	["opt_goalcompletionflash"] = "Flash goal on completion",
	["opt_goalcompletionflash_desc"] = "Use a visual 'flash' indication when a single goal completes.",
	["opt_goalupdateflash"] = "Flash goal on progress",
	["opt_goalupdateflash_desc"] = "Use a visual 'flash' indication when a single goal is progressed.",
	["opt_flashborder"] = "Flash window on step completion",
	["opt_flashborder_desc"] = "Flash the whole window whenever a step is completed.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

	["opt_group_display"] = "Display",
	["opt_group_display_desc"] = "Set up how you'd like the guides to be displayed.",

	["opt_group_data"] = "Stored guides",
	["opt_group_data_desc"] = "Zygor Guides Viewer can internally store commercial guides that cannot (due to Blizz policy) be distributed as standalone addons.",
	["opt_group_data_guide"] = "Guides stored internally:",
	["opt_group_data_guide_desc"] = "Select a stored guide from this list to edit or delete it. This list does NOT show guides that are loaded as separate addons.",
	["opt_group_data_del"] = "Delete guide",
	["opt_group_data_del_desc"] = "Delete the selected guide from internal storage.",
	["opt_group_data_edit"] = "Edit guide",
	["opt_group_data_edit_desc"] = "Load the selected guide into the editor window below for hands-on fixes.",
	["opt_group_data_entry"] = "Guide data:",
	["opt_group_data_entry_desc"] = "Paste a new guide here (remember to wrap its steps in:|nguide Title Of Guide|nsteps...|nsteps...|nend\n); note that pasting and parsing of a large guide (>30kB) may take a few seconds.",

	['opt_windowlocked'] = "Lock window",
	['opt_windowlocked_desc'] = "Lock the window, making it non-interactive for the mouse.\nOnly buttons remain active.",
	['opt_hideborder'] = "Auto-hide border",
	['opt_hideborder_desc'] = "Automatically hide the window's border and buttons, when the mouse is away from it.\nHover for a moment over the window's title to bring it back.",

	['opt_skin'] = "Window skin color",
	['opt_skin_desc'] = "Choose a color for the window decorations to match your UI.",
	['opt_skin_violet'] = "|cffee55ffViolet",
	['opt_skin_green'] = "|cff88ff88Green",
	['opt_skin_blue'] = "|cff99aaffBlue",
	['opt_skin_orange'] = "|cffffbb00Orange",

	['opt_backopacity'] = "Background opacity",
	['opt_backopacity_desc'] = "Opacity of the window's background.",



	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Press Ctrl+C to copy this report.|nThen, e-mail it to the author of |cffffffff%s|r,|nat |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(unnamed guide?)|r",
	["report_noauthor"] = "|cffff8888(no address available)|r",


	["opt_mapbutton"] = "Show minimap button",
	["opt_mapbutton_desc"] = "Show the Zygor Guides Viewer button next to your minimap",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Click|r to toggle guide window|n"..COLOR_TIP_MOUSE.."Right-click|r to configure|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"


	["waypointaddon_set"] = "Waypointing addon selected: %s",
	["waypointaddon_connecting"] = "Connecting to waypointing addon: %s",
	["waypointaddon_connected"] = "Successfully connected to %s.",
	["waypointaddon_fail"] = "Failed to connect to %s.",
	['waypoint_step'] = "Stufe %s",

	["checkmap"] = "Check your map.",

	["initialized"] = 'Initialized.',

	["miniframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	["miniframe_notselected"] = "No guide is currently selected.\nPlease click the blinking button above to select a guide.",

	['frame_locked'] = "Fenster gefixiert",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Linksklick|r zum freigeben",
	['frame_unlocked'] = "Fenster frei",
	['frame_lock'] = COLOR_TIP_MOUSE.."Linksklick|r zum fixieren",
	['frame_settings'] = "Optionen",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Linksklick|r für Menu",
	['frame_settings2'] = COLOR_TIP_MOUSE.."Rechtsklick|r für Optionen",
	['frame_minimized'] = "Showing |cffffffff%d|r step(s)",
	['frame_maximized'] = "Showing all steps",
	['frame_minimize'] = COLOR_TIP_MOUSE.."Linksklick|r für nur |cffffffff%d|r anzeigen",
	['frame_maximize'] = COLOR_TIP_MOUSE.."Linksklick|r für alles anzeigen",
	['frame_stepnav_prev'] = "Vorherig Schritt",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Linksklick|r: zurück",
	['frame_stepnav_next'] = "Nächste Schritt",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Linksklick|r: weiter",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Rechtsklick|r: fast-forward",
	['frame_section'] = "Current guide",
	['frame_section_click'] = COLOR_TIP_MOUSE.."Click|r to select",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."Click|r"..COLOR_TIP.." to set waypoint: |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Location: |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Error|r loading guide |cffaaffaa%s|r\nline %d: %s\nerror: %s",
	["message_errorloading_brief"] = "|cffff4444Error|r loading guide |cffaaffaa%s|r",
	["message_loadedguide"] = "Activated guide: |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Missing|r guide: |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (no guide loaded)",


	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaStufe: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (teil %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Set home location to %s",
	["stepgoal_flightpath"] = "Get the %s flight path",

	["stepgoal_accept"] = "Nehme %s an",
	["stepgoal_turn in"] = "Gebe %s ab",
	["stepgoal_talk to"] = "Spreche mit %s",
	["stepgoal_kill"] = "Töte %s",
	["stepgoal_kill #"] = "Töte %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Get %s",
	["stepgoal_get #"] = "Get %s %s",
	["stepgoal_ding"] = "You should now be level %s.|n    If not, grind a little until you are.",
	["stepgoal_go to"] = "Gehe zum %s",
	["stepgoal_also at"] = "Also an %s",
	["stepgoal_hearth to"] = "Hearth to %s",
	["stepgoal_collect"] = "Collect %s",
	["stepgoal_collect #"] = "Collect %s %s",
	["stepgoal_buy"] = "Kaufe %s %s",
	["stepgoal_fpath"] = "Get the %s Flight Path",
	["stepgoal_use"] = "Use %s",
	["stepgoal_home"] = "Make %s your home location",
	["stepgoal_petaction"] = "Use pet action %s",
	["stepgoal_havebuff"] = "Gain buff/debuff '%s'",
	["stepgoal_nobuff"] = "Lose buff/debuff '%s'",
	["stepgoal_invehicle"] = "Enter vehicle",
	["stepgoal_outvehicle"] = "Leave vehicle",
	["stepgoal_equipped"] = "Equip %s",
	["stepgoal_at_suff"] = " (%s)",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	--["completion_(done)"] = "(done)",

--[[
	["stepgoalshort_complete"] = "done",
	["stepgoalshort_incomplete"] = "pending",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
--]]

	["step_req"] = "Step valid only for: %s",


	["map_highlight"] = "Highlight",

	["stepreq"] = "Step class/race requirement: ",
	["stepreqor"] = " or ",

	["opt_do_searchforgoal"] = "Find a completeable goal",
	["searching_for_goal_success"] = "A completeable goal has been found for you: %s. This may be a good starting point in the guide for you.",
	["searching_for_goal_failed"] = "No completeable goal has been found. Try another guide or section, pick up some quests, or search again from the start of the section (the search only goes forward).",

	["binding_togglewindow"] = "Show Guide Window",

} end)



local plurals = {
}

ZygorGuidesViewer_L("Specials", "deDE", function() return {
	["plural"] = function (word)
		return word
		--[[
		local rest=""
		local preof,postof = word:match("(.-) der (.+)")
		if preof then
			word=preof
			rest=" der "..postof
		end
		local last = word:sub(-1)
		return word..rest
		]]
	end,
	['contract_mobs'] = false,
	['contract_mobs_old'] = function(mobs)
			local start,ending

			if not mobs[1].name and type(mobs)=="table" then
				local l=mobs
				mobs={}
				for i=1,#l do mobs[i]={name=l[i]} end
			end
			local common,all
			for i=1,50 do
				common = mobs[1].name:sub(1,i)
				all=true
				for m=2,#mobs do
					if mobs[m].name:find(common)~=1 then
						all=false
						break
					end
				end
				if not all then
					common = common:sub(1,-2)
					break
				end
			end
			if common:sub(-1)==" " then common = common:sub(1,-2) end
			start=common

			-- start failed? let's try end.
			for i=1,50 do
				common = mobs[1].name:sub(-i)
				all=true
				for m=2,#mobs do
					if mobs[m].name:sub(-i)~=common then
						all=false
						break
					end
				end
				if not all then
					common = common:sub(2)
					break
				end
			end
			if common:sub(1,1)==" " then common = common:sub(2) end
			ending=common

			if #start>#ending and #start>3 then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_start'](start)
			elseif #ending>#start and #ending>3 then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_end'](ending)
			else
				return nil
			end
		end,
	['contract_mobs_start'] = function(s) return ZygorGuidesViewer_L("Specials")['plural'](s) end,
	['contract_mobs_end'] = function(s)
		local pre=s:sub(1,4)
		if pre=="der " or pre=="das " or pre=="die " then
			return "Mobs "..s
		else
			return ZygorGuidesViewer_L("Specials")['plural'](s)
		end
	end,
} end)



-- Add lines for any translations needed for:

-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "deDE", function() return {
--	["blabla"] = TRUE,
} end)

