-- These are the main viewer's lines.

local COLOR_TIP_MOUSE = "|cffeedd99"
local COLOR_TIP_HINT = "|cff99ff00"
local COLOR_TIP = "|cff00ff00"

ZygorGuidesViewer_L("Main", "enUS", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor Guides Viewer",
	["desc"] = "Main settings for Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "%d guides are loaded.",

	["opt_guide"] = "Select a guide:",
	["opt_guide_steps"] = "Steps: %d",
	["opt_guide_author"] = "Author: %s",
	["opt_guide_next"] = "Next in series: %s",

	["opt_report"] = "Create a bug report",
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
	['opt_group_map_hidearrowwithguide'] = "Hide arrow when closing viewer",
	['opt_group_map_hidearrowwithguide_desc'] = "Select this to make the arrow follow the guide window's visibility.\nLeave unchecked if you want the arrow to stay visible when you hide the guides.",
	["opt_group_addons_internal"] = "Built-in waypointing",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_carbonite"] = "Carbonite",
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

	["opt_group_display"] = "Display",
	["opt_group_display_desc"] = "Set up how you'd like the guides to be displayed.",

	['opt_stepnumber'] = "Show step numbers",
	['opt_stepnumber_desc'] = "Display step numbers and suggested levels for each step.\nTurn off to conserve screen space.",
	['opt_hidestepborders'] = "Hide borders",
	['opt_hidestepborders_desc'] = "Hide the graphical borders around steps.",
	['opt_stepbackopacity'] = "Background opacity",
	['opt_stepbackopacity_desc'] = "Opacity of the step window's background.\nThe background's color matches the completion status and is darkened.",
	["opt_goalicons"] = "Show step line icons",
	["opt_goalicons_desc"] = "Display icons reflecting completion status.",
	["opt_goalcolorize"] = "Color completed step lines",
	["opt_goalcolorize_desc"] = "When completing step lines, colorize them entirely green.",
	["opt_goalbackprogress"] = "Apply colors progressively",
	["opt_goalbackprogress_desc"] = "Show partial completion as intermediary colors between the incomplete and complete colors.|nIf off, objectives are displayed only using 'incomplete' or 'complete' colors.",

	["opt_group_step"] = "Step objectives",

	["opt_goalbackcolor_desc"] = "Completion colors:",
	["opt_goalbackgrounds"] = "Color backgrounds",
	["opt_goalbackgrounds_desc"] = "Color step line backgrounds to reflect completion status.",
	["opt_goalbackcomplete"] = "Complete",
	["opt_goalbackcomplete_desc"] = "This color will indicate completed objectives or steps.",
	["opt_goalbackincomplete"] = "Incomplete",
	["opt_goalbackincomplete_desc"] = "This color will indicate incomplete objectives, currently in progress.",
	["opt_goalbackprogressing"] = "Middle",
	["opt_goalbackprogressing_desc"] = "This color will indicate objectives at 50% completion.",
	["opt_goalbackimpossible"] = "Impossible",
	["opt_goalbackimpossible_desc"] = "Use this color to indicate objectives impossible to complete at this time.",

	["opt_progressbackcolor_desc"] = "Step colors:",
	["opt_goalbackaux"] = "Travel",
	["opt_goalbackaux_desc"] = "Use this color to indicate travel steps.",
	["opt_goalbackobsolete"] = "Obsolete",
	["opt_goalbackobsolete_desc"] = "Use this color to indicate obsolete objectives or steps.",

	['opt_tooltipsbelow'] = "Show extra information inline",
	['opt_tooltipsbelow_desc'] = "Extra information about certain step lines can be displayed either inline, or as tooltips shown on mouseover.",

	["opt_flash_desc"] = "Progress notification:",
	["opt_goalcompletionflash"] = "Flash goal on completion",
	["opt_goalcompletionflash_desc"] = "Use a visual 'flash' indication when a single goal completes.",
	["opt_goalupdateflash"] = "Flash goal on progress",
	["opt_goalupdateflash_desc"] = "Use a visual 'flash' indication when a single goal is progressed.",
	["opt_flashborder"] = "Flash window on step completion",
	["opt_flashborder_desc"] = "Flash the whole window whenever a step is completed.",

	['opt_resetwindow'] = "Reset window",
	['opt_resetwindow_desc'] = "If you accidentally move the guide window off-screen and can't move it back, this button resets it to the screen center.",

	['opt_trackchains'] = "Track chained quests",
	['opt_trackchains_desc'] = "Mark quest-accept steps as unavailable if a prerequisite quest wasn't completed.\n\nThe quest chain database includes \"loose chains\", quests that follow each other but don't actually need to be completed in proper order, so sometimes a quest-accept line might be displayed as unavailable even though the quest can be accepted. We'll appreciate your help in finding all quests that behave like that.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

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
	['opt_guidesinhistory'] = "Number of recent guides",
	['opt_guidesinhistory_desc'] = "Show this many recently used guides. Set to more especially if you're switching between reputation or daily guides often.",

	['opt_skin'] = "Window skin color",
	['opt_skin_desc'] = "Choose a color for the window decorations to match your UI.",
	['opt_skin_remaster'] = "|cffc7d9ffRemaster (default)",
	['opt_skin_violet'] = "|cffee55ffViolet",
	['opt_skin_green'] = "|cff88ff88Green",
	['opt_skin_blue'] = "|cff99aaffBlue",
	['opt_skin_orange'] = "|cffffbb00Orange",

	['opt_backopacity'] = "Background opacity",
	['opt_backopacity_desc'] = "Opacity of the window's background.",


	['opt_group_progress'] = "Dynamic progress",
	['opt_group_progress_desc'] = "To ensure optimal leveling progress, this addon can dynamically skip quests you would not benefit from at your level.",

	['opt_levelsahead'] = "Allow levels ahead",
	['opt_levelsahead_desc'] = "This setting controls how far ahead of the guide do you want to be able to play.\nWith a setting of 0, all quests usually done below your level will be skipped (if they have no follow-ups).\nWith a setting of 1 and more, only quests more than that many levels below you will be skipped.",

	['opt_showobsolete'] = "Mark obsolete steps",
	['opt_showobsolete_desc'] = "Indicate obsolete steps with a gray background.\nSteps are judged as obsolete when they refer to quests that are too low level for you.",
	['opt_skipobsolete'] = "Skip obsolete steps",
	['opt_skipobsolete_desc'] = "Automatically skip obsolete steps.",
	['opt_skipauxsteps'] = "Skip travel steps",
	['opt_skipauxsteps_desc'] = "Automatically skip travel steps if they're followed by already completed or obsolete steps.\nThis avoids situations like completing 'Go to A Very Distant Zone 12,34' only to find out that the next step is 'Accept Some Quest' which you had already done and have now traveled half the world in vain.",
	['opt_skipflightsteps'] = "Assume flight paths known",
	['opt_skipflightsteps_desc'] = "Assume you are handling flightpath discovery yourself, and automatically mark any flight path pickup steps as complete.\n\nMostly useful during initial jumps into the guides, not very useful during normal gameplay.",
	['opt_skipimpossible'] = "Skip impossible steps",
	['opt_skipimpossible_desc'] = "Automatically skip impossible steps, if you don't want to be bothered with objectives belonging to quests you've skipped on purpose.",

	['opt_group_progress_bottomdesc'] = "Dynamic progress works by marking quests as 'obsolete' when you are ahead of the guide's levels by more than the amount defined above. Quest chains are only marked as obsolete if the whole chain is obsolete.\n\nFor new players, this helps using the guides by intelligently skipping low level content, only stopping to pick up quest chains you'll still benefit from later on. If you want to find a good place to start following the guide, load the starting guide for your race and let the viewer skip whole large portions of the guide, until you are at a section proper for your level.\n\nFor experienced players, this ensures that the guide will never slow you down by giving you low-level quests, if you gain levels faster than the guide expects (for example if you run some instances or use the \"rested\" exp bonus). You can set how far ahead of the guide you want to allow yourself to be, before the guide starts \"pushing\" you forward by skipping quests.",

	['opt_group_mapinternal'] = "Internal waypointer",
	['opt_arrowmeters'] = "Metric system",
	['opt_arrowmeters_desc'] = "Use meters and kilometers instead of yards and miles.",
	['opt_arrowfreeze'] = "Arrow click-through",
	['opt_arrowfreeze_desc'] = "Make the pointer arrow ignore all mouse actions. Uncheck to enable dragging the arrow.",
	['opt_arrowcam'] = "Arrow follows camera",
	['opt_arrowcam_desc'] = "Show directions basing on the direction the camera is turned. If unchecked, the pointer arrow shows directions basing only on where your character is facing.\n\nNote: in camera mode, the arrow might point in weird directions when using click-to-move.",
	['opt_arrowcolordir'] = "Colour by direction",
	['opt_arrowcolordir_desc'] = "Colour the arrow's gem green when pointing at the destination.\n\nDeselect to let the gem turn green when approaching the destination.",
	['opt_arrowscale'] = "Arrow scale",
	['opt_arrowscale_desc'] = "Set the size of the waypointing arrow.",
	['opt_arrowfontsize'] = "Arrow font size",
	['opt_arrowfontsize_desc'] = "Set the size of the labels under the arrow.",
	['opt_mapcoords'] = "Show coordinates",
	['opt_mapcoords_desc'] = "Display player and cursor coordinates on the world map.",
	['opt_minimapzoom'] = "Zoom minimap",
	['opt_minimapzoom_desc'] = "Automatically zoom in your minimap when approaching the destination.",
	['opt_audiocues'] = "Audible cues",
	['opt_audiocues_desc'] = "Provides audible navigation signals, used when leaving your character flying forward for more than 5 seconds.\nWith these, you can safely turn to face the target waypoint, start flying forward, and Alt-Tab out or something.\nWhen arriving at the destination, a 'boat bell' sound is played. When the destination is no longer straight ahead and you're going to miss it, a 'warning zap' is played.",

	['opt_foglight'] = "Reveal map",
	['opt_foglight_desc'] = "Reveal unexplored areas on the map.",

	['opt_group_convenience'] = "Extra features",
	['opt_group_convenience_desc'] = "Various things that we thought might be useful.",
	['opt_autoaccept'] = "Auto-accept quests",
	['opt_autoaccept_desc'] = "Automatically accept quests, if the current step instructs you to.\n|cffffaa88This makes questing very fast, but may be confusing.|r",
	['opt_autoturnin'] = "Auto-turn in quests",
	['opt_autoturnin_desc'] = "Automatically turn in quests, if the current step instructs you to.\nWorks only if there is no reward to choose.\n|cffffaa88This makes questing very fast, but may be confusing.|r",
	['opt_fixblizzardautoaccept'] = "'Fix' built-in auto-accepting",
	['opt_fixblizzardautoaccept_desc'] = "Since patch 3.2, quests for levels 1-3 get automatically accepted, but the quest window stays open, which confuses some players. This option changes the 'Accept' button into 'Accepted' to make it feel more natural.|r",
	['opt_analyzereps'] = "Detailed reputation gains",
	['opt_analyzereps_desc'] = "Display verbose reputation gain messages in chat, showing percentage gained and next standing.",

	-- Gold Guide options

	['opt_group_gold'] = "Gold Guide",
	['opt_group_gold_desc'] = "These options control the behaviour of the map notes of the Zygor Alliance/Horde Gold Guide.",
	['opt_gold_detectiondist'] = "Detection distance",
	['opt_gold_detectiondist_desc'] = "Controls at what distance are the gold-making locations considered 'near'.",
	['opt_gold_reqmode'] = "Filter locations by profession",
	['opt_gold_reqmode_desc'] = "Decide whether to show all locations (mining areas, skinning, etc.) regardless of the character's professions, or only those that can really be used.",
	['opt_gold_reqmode_all'] = "Show all locations",
	['opt_gold_reqmode_future'] = "Current professions, but ignore level",
	['opt_gold_reqmode_current'] = "Current profession levels",

	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Press Ctrl+C to copy this report.|nThen, e-mail it to the author of |cffffffff%s|r,|nat |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(unnamed guide)|r",
	["report_noauthor"] = "|cffff8888(no address available)|r",


	["opt_mapbutton"] = "Show minimap button",
	["opt_mapbutton_desc"] = "Show the Zygor Guides Viewer button next to your minimap",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Click|r to toggle guide window|n"..COLOR_TIP_MOUSE.."Right-click|r to configure|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"


	["waypointaddon_set"] = "Waypointing addon selected: %s",
	["waypointaddon_detecting"] = "Attempting to auto-detect waypointing addon...",
	--["waypointaddon_connecting"] = "Connecting to waypointing addon: %s",
	["waypointaddon_connected"] = "Connected to |cffddeeff%s|r for waypointing.",
	--["waypointaddon_disconnecting"] = "Disconnecting from waypointing addon: %s",
	["waypointaddon_disconnected"] = "Disconnected from |cffddeeff%s|r.",
	["waypointaddon_fail"] = "|cffffddddFailed to connect|r to |cffddeeff%s|r.",
	['waypoint_step'] = "Step %s",

	['pointer_corpselabel1'] = "Ex you",
	['pointer_corpselabel2'] = "He who learns to run away...",
	['pointer_corpselabel3'] = "Bitten off more than you could chew, eh.",
	['pointer_corpselabel4'] = "Bucket Kicker - this way",
	['pointer_corpselabel5'] = "Try not to think about the repair bill.",

	["checkmap"] = "Check your map.",

	["initialized"] = 'Initialized.',

	["miniframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	["miniframe_notselected"] = "No guide is currently selected.\nPlease click the blinking button above to select a guide.",
	["miniframe_loading"] = "Loading guides: %d%%",

	['frame_locked'] = "Window locked",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Click|r to unlock",
	['frame_unlocked'] = "Window unlocked",
	['frame_lock'] = COLOR_TIP_MOUSE.."Click|r to lock",
	['frame_settings'] = "Options",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Click|r to set basic options",
	['frame_settings2'] = COLOR_TIP_MOUSE.."Right-click|r to enter configuration",
	['frame_minimized'] = "Showing |cffffffff%d|r step(s)",
	['frame_maximized'] = "Showing all steps",
	['frame_minimize'] = COLOR_TIP_MOUSE.."Click|r to show only |cffffffff%d|r",
	['frame_maximize'] = COLOR_TIP_MOUSE.."Click|r to show all",
	['frame_minright'] = COLOR_TIP_MOUSE.."Right-click|r to set number of steps",
	['frame_stepnav_prev'] = "Previous step",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Click|r to go back",
	['frame_stepnav_prev_right'] = COLOR_TIP_MOUSE.."Right-click|r to rewind",
	['frame_stepnav_next'] = "Next step",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Click|r to skip",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Right-click|r to fast-forward",
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
	['step_level'] = "|cffaaccaaLevel: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "'%s'",
	["questtitle_part"] = "'%s' (part %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Set home location to %s",
	["stepgoal_flightpath"] = "Get the %s flight path",
	
	["stepgoal_accept"] = "Accept %s",
	["stepgoal_turn in"] = "Turn in %s",
	["stepgoal_talk to"] = "Talk to %s",
	["stepgoal_kill"] = "Kill %s",
	["stepgoal_kill #"] = "Kill %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Get %s",
	["stepgoal_get #"] = "Get %s %s",
	["stepgoal_ding"] = "You should now be level %s.|n    If not, grind a little until you are.",
	["stepgoal_go to"] = "Go to %s",
	["stepgoal_also at"] = "Also at %s",
	["stepgoal_hearth to"] = "Hearth to %s",
	["stepgoal_collect #"] = "Collect %s %s",
	["stepgoal_collect"] = "Collect %s",
	["stepgoal_buy"] = "Buy %s %s",
	["stepgoal_fpath"] = "Get the %s Flight Path",
	["stepgoal_use"] = "Use %s",
	["stepgoal_home"] = "Make %s your home location",
	["stepgoal_rep"] = "Become %s with %s",
	["stepgoal_petaction"] = "Use pet action %s",
	["stepgoal_havebuff"] = "Gain buff/debuff '%s'",
	["stepgoal_nobuff"] = "Lose buff/debuff '%s'",
	["stepgoal_invehicle"] = "Enter vehicle",
	["stepgoal_outvehicle"] = "Leave vehicle",
	["stepgoal_equipped"] = "Equip %s",
	["stepgoal_at_suff"] = " (%s)",
	["stepgoal_achieve"] = "Gain achievement '%s'",
	["stepgoal_achievesub"] = "Complete '%s' for achievement '%s'",
	["stepgoal_skill"] = "Learn %s to level %s",
	["stepgoal_skillmax"] = "Raise %s to maximum level %s",
	["stepgoal_learn"] = "Learn to create %s",

	["stepgoal_or"] = "  - or -",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	["completion_done"] = "(done)",
	["completion_rep"] = "(%s)",

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
	["binding_prev"] = "Previous Step",
	["binding_next"] = "Next Step",

	["req_not"] = "not %s",

	["menu_last"] = "Last guides:",
	["menu_last_entry"] = "%s |cffaaaaaastep|r %d",

	['gold_missing_nospotsinrange'] = "No gold spots within range.",
	['gold_missing_noguidesloaded'] = "No gold guides are loaded!",

	['gold_header_drop'] = "Drops from |cffffdddd%s|r:",
	['gold_header_ore'] = "Ore deposits:",
	['gold_header_herb'] = "Herbs:",
	['gold_header_skin'] = "Skins:",
	['gold_header_vendor'] = "Buy:", -- from |cffddffdd%s|r:",

} end)

ZygorGuidesViewer_L("Faction", "enUS", function() return {
	["going"] = "%d%% to %s"
} end)


local plurals = {
	Ballista="Ballistae",
	Bark=1,
	Blood=1,
	Cargo=1,
	Down=1,
	Dust=1,
	--Citizen="Citizens",
	Felsworn=1,
	Harvest=1,
	Ichor=1,
	Lumber=1,
	Meat=1,
	Mojo=1,
	Nitroglycerin=1,
	Nitrate=1,
	Oil=1,
	Prey=1,
	Pulp=1,
	Sap=1,
	Silk=1,
	Snuff=1,
	Stuff=1,
	Tooth="Teeth",
	Venom=1,
	Vermin=1,
	Venison=1,
	Vrykul=1,
	Water=1,
	Wood=1,
	--Wolf="Wolves",

	drunk=1
}

local specials = {
	{'in a duel',1},
	{'Scarlet Crusader slain',"Scarlet Crusaders"},
	{'Citizen of Havenshire slain',"Citizens of Havenshire"},
	{'Garm Invader slain',"Garm Invaders"},
	{'En\'kilah Casualty',"En'kilah mobs"},
	{'(.*) [sS]lain$',"%1"},
}

local wordspecials = {
	['haman$']="hamans",
	['(%a)man$']="%1men",
	['%a*[fF]ish$']=1,
	['%a*[cC]loth$']=1,
}

local notverbs = { ['Seed']=1 }

ZygorGuidesViewer_L("Specials", "enUS", function() return {
	['plural'] = function (word)
			-- one-shot special cases
			for i,data in ipairs(specials) do
				local sing,plur=unpack(data)
				if word:match(sing) then
					return plur==1 and word or word:gsub(sing,plur)
				end
			end

			-- breakdown.
			local rest=""
			local preof,postof = word:match("^(.-) of (.+)$")
			if preof then
				word=preof
				rest=" of "..postof
			else
				local obj,verb = word:match("^(.+)( %a-ed)$")
				if obj and not notverbs[verb:sub(2)] then
					word=obj
					rest=verb
				end
			end
			local last = word:sub(-1)
			if (last=="y" and not word:sub(-2):match("[aeiou]y")) then
				return word:sub(1,-2).."ies" ..rest
			elseif last=="f" and word:sub(-2)~="ff" then
				return word:sub(1,-2).."ves" ..rest
			elseif word:sub(-3)=="ess" then
				return word.."es" ..rest
			elseif word:sub(-2)=="ch" then
				return word.."es" ..rest
			elseif last=="x" then
				return word.."es" ..rest
			elseif last=="s" then
				return word ..rest
			elseif last=="o" then
				return word .."es" ..rest
			else
				local notlastw,lastw = word:match("^(.+%s)(.-)$")
				if lastw then
					word=lastw
				else
					notlastw=""
				end
				--print(notlastw.."..."..word.."..."..rest)

				local special=false
				for sing,plur in pairs(wordspecials) do if word:match(sing) then if plur==1 then special=true break else word=word:gsub(sing,plur) special=true break end end end
				if not special then
					word = (plurals[word]==1 and word or plurals[word]) or (word.."s")
				end
				return notlastw .. word .. rest
			end
		end,

	['contract_mobs'] = function(mobs)
			local start,ending

			if not mobs[1].name and type(mobs)=="table" then
				local l=mobs
				mobs={}
				for i=1,#l do mobs[i]={name=l[i]} end
			end
			local common,lastcommon,all
			for i=1,5 do
				common = mobs[1].name:match("^([%a']+" .. (" [%a']+"):rep(i-1) .. ")")
				if not common then break end
				all=true
				for m=2,#mobs do
					if mobs[m].name:find(common)~=1 then
						all=false
						break
					end
				end
				if all then
					lastcommon=common
				else
					break
				end
			end

			if lastcommon then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_start'](lastcommon)
			end

			-- start failed? let's try end.
			lastcommon=nil
			for i=1,5 do
				common = mobs[1].name:match("([%a']+" .. (" [%a']+"):rep(i-1) .. ")$")
				if not common then break end
				all=true
				for m=2,#mobs do
					if mobs[m].name:sub(-#common)~=common then
						all=false
						break
					end
				end
				if all then
					lastcommon=common
				else
					break
				end
			end

			if lastcommon then
				return ZygorGuidesViewer_L("Specials")['contract_mobs_end'](lastcommon)
			end

			--else
			return nil
		end,

	['contract_mobs_start'] = function(s) return s.." mobs" end,
	['contract_mobs_end'] = function(s) return ZygorGuidesViewer_L("Specials")['plural'](s) end,
} end)

ZGVLPL = ZygorGuidesViewer_L("Plurals")


-- Add lines for any translations needed for:

-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "enUS", function() return {
--	["blabla"] = TRUE,
} end)

