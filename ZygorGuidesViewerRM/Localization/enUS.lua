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
	["opt_backcolor"] = "Background color",
	["opt_backcolor_desc"] = "The background color of the window.",

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
	['opt_arrowcolordir'] = "Color by direction",
	['opt_arrowcolordir_desc'] = "Color the arrow's gem green when pointing at the destination.\n\nDeselect to let the gem turn green when approaching the destination.",
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
	['opt_autoturnin_desc'] = "Automatically turn in quests, if the current step instructs you to.\nQuest reward selection is controlled separately below.\n|cffffaa88This makes questing very fast, but may be confusing.|r",
	['opt_autoquestreward'] = "Auto-choose best quest reward",
	['opt_autoquestreward_desc'] = "Automatically choose the best quest reward when turning in a quest with multiple reward choices. When disabled, Zygor will only highlight the recommended reward.",
	['opt_fixblizzardautoaccept'] = "'Fix' built-in auto-accepting",
	['opt_fixblizzardautoaccept_desc'] = "Since patch 3.2, quests for levels 1-3 get automatically accepted, but the quest window stays open, which confuses some players. This option changes the 'Accept' button into 'Accepted' to make it feel more natural.|r",
	['opt_analyzereps'] = "Detailed reputation gains",
	['opt_analyzereps_desc'] = "Display verbose reputation gain messages in chat, showing percentage gained and next standing.",

	-- Gold Guide options

	['opt_group_gold'] = "Gold Guide",
	['opt_group_gold_desc'] = "These options control the behavior of the map notes of the Zygor Alliance/Horde Gold Guide.",
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
	["miniframe_notselected"] = "No guide is currently selected.\nPlease click the flashing Guides button to select a guide.",
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

	["stepgoal_cast"] = "Cast %s",
	["stepgoal_click"] = "Click %s",
	["stepgoal_fly"] = "Fly to %s",
	["stepgoal_arrive"] = "Arrive at %s",
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

	["opt_gearadvisor_title"] = "Gear Advisor",
	["opt_gearadvisor_desc"] = "Gear scoring and upgrade detection",
	["opt_gearadvisor_intro"] = "Set how Zygor detects upgrades, how it prompts you, and which sources Gear Finder should search.",
	["opt_gearadvisor_detection_header"] = "Detection",
	["opt_gearadvisor_enable"] = "Enable Gear Advisor",
	["opt_gearadvisor_enable_desc"] = "Enable item scoring and upgrade detection",
	["opt_itemscore_tooltips"] = "Show ItemScore on Tooltips",
	["opt_itemscore_tooltips_desc"] = "Show upgrade percentage on item tooltips",
	["opt_itemscore_tooltips_allbuilds"] = "Show All Builds on Tooltips",
	["opt_itemscore_tooltips_allbuilds_desc"] = "Show upgrade or downgrade lines for all specs of your class on item tooltips. Active-build suggestions and equip prompts still use only your detected active build.",
	["opt_gearadvisor_prompting_header"] = "Prompting",
	["opt_autogearauto"] = "Auto-equip Upgrades",
	["opt_autogearauto_desc"] = "Automatically equip upgrades without asking (notification only)",
	["opt_masterloot_notices"] = "Show Master Loot Upgrade Notices",
	["opt_masterloot_notices_desc"] = "Print a local Gear Advisor message when a visible master-loot item is a true upgrade for your active build.",
	["opt_masterloot_compare"] = "Include Compared Equipped Item in Master Loot Notices",
	["opt_masterloot_compare_desc"] = "Include the equipped baseline item link in the local master-loot upgrade message when available.",
	["opt_gearadvisor_vendor_header"] = "Vendor & Convenience",
	["opt_autosellgrey"] = "Auto-sell Grey Items",
	["opt_autosellgrey_desc"] = "Automatically sell grey (junk) items when visiting a vendor",
	["opt_autorepair"] = "Auto-repair",
	["opt_autorepair_desc"] = "Automatically repair gear when visiting a vendor",
	["opt_gearadvisor_sources_desc"] = "Choose which dungeon and raid difficulties Gear Finder can suggest.",
	["opt_gearadfinder_sources_header"] = "Gear Finder Sources",
	["opt_gear_normal_dungeons"] = "Normal Dungeons",
	["opt_gear_heroic_dungeons"] = "Heroic Dungeons",
	["opt_gear_normal_raids"] = "Normal Raids",
	["opt_gear_heroic_raids"] = "Heroic Raids",
	["opt_gearadvisor_maintenance_header"] = "Maintenance",
	["opt_clearnotupgrades"] = "Reset Declined Upgrades",
	["opt_clearnotupgrades_desc"] = "Clear the list of items you previously declined",
	["opt_clearnotupgrades_done"] = "Declined upgrades list cleared.",
	["opt_statweights_intro"] = "Adjust how strongly each stat affects item scoring for a selected class and spec. Higher values make the stat more important.",
	["opt_statweights_warning"] = "|cffff6600Warning:|r Changing stat weights is for advanced users. Incorrect values may cause bad gear suggestions.\\n",
	["opt_statweights_curated"] = "|cff88ccffRecommended defaults:|r Wrath stat weights are source-backed curated baselines intended for 3.3.5a. Most players should start here and only customize when they have a clear reason.\\n",
	["opt_statweights_class_header"] = "Class & Spec Selection",
	["opt_statweights_class"] = "Class",
	["opt_statweights_spec"] = "Spec",
	["opt_statweights_override"] = "Override Active Build",
	["opt_statweights_override_desc"] = "Use the selected spec from this panel as your live active build for tooltips and gear recommendations until disabled.",
	["opt_statweights_activate"] = "Set as Active Spec Weight",
	["opt_statweights_activate_desc"] = "Use these stat weights for gear scoring",
	["opt_statweights_activelabel"] = "|cff00ff00This is your active stat weight set.|r",
	["opt_statweights_visibility_header"] = "Visibility",
	["opt_statweights_showallstats"] = "Show All Stats",
	["opt_statweights_showallstats_desc"] = "Show all stat weight fields, even those not used by this spec",
	["opt_statweights_weights_header"] = "Stat Weights",
	["opt_statweights_spacer"] = "Edit the weight for each stat below. Higher values make the stat more valuable for scoring.\\n",
	["binding_togglewindow"] = "Show Guide Window",
	["binding_prev"] = "Previous Step",
	["binding_next"] = "Next Step",

	["req_not"] = "not %s",

	["menu_last"] = "Last guides:",
	["menu_last_entry"] = "%s |cffaaaaaastep|r %d",
	["gb_window_title"] = "Guide Browser",
	["gb_addon_title"] = "Zygor Guides Viewer Remastered",
	["gb_root"] = "Root",
	["gb_search"] = "Search",
	["gb_folders"] = "Folders",
	["gb_guides"] = "Guides",
	["gb_load_guide"] = "Load Guide",
	["gb_open_legacy"] = "Open Legacy Picker",
	["gb_path_format"] = "Path: %s",
	["gb_select_guide"] = "Select a guide",
	["gb_select_guide_from_list"] = "Select a guide from the list.",
	["gb_select_settings_page"] = "Select a settings page",
	["gb_all_guides"] = "All Guides",
	["gb_other"] = "Other",
	["gb_unknown"] = "unknown",
	["gb_none"] = "none",
	["gb_folder_format"] = "Folder: %s",
	["gb_progress_format"] = "Progress: %d%%",
	["gb_guides_count_format"] = "%d guides",
	["gb_current_meta_format"] = "Step %d / %d  |  %s",
	["gb_detail_meta_format"] = "Steps: %d\nAuthor: %s\nNext: %s",
	["gb_tab_home"] = "Home",
	["gb_tab_featured"] = "Featured",
	["gb_tab_current"] = "Current",
	["gb_tab_recent"] = "Recent",
	["gb_tab_options"] = "Options",
	["gb_cat_leveling"] = "Leveling",
	["gb_cat_dungeons"] = "Dungeons",
	["gb_cat_daily"] = "Daily",
	["gb_cat_events"] = "Events",
	["gb_cat_reputations"] = "Reputations",
	["gb_cat_gold"] = "Gold",
	["gb_cat_professions"] = "Professions",
	["gb_cat_petsmounts"] = "Pets & Mounts",
	["gb_cat_titles"] = "Titles",
	["gb_cat_achievements"] = "Achievements",
	["gb_cat_misc"] = "Misc",
	["gb_cat_favorites"] = "Favorites",
	["gb_opt_guides"] = "Guides",
	["gb_opt_desc_guides"] = "Guide selection, active guide metadata, and core guide controls.",
	["gb_opt_stepdisplay"] = "Step Display",
	["gb_opt_desc_stepdisplay"] = "Viewer visuals, frame layout, skin/fonts, and step row/goal display controls.",
	["gb_opt_progress"] = "Progression",
	["gb_opt_desc_progress"] = "Step progression behavior, skipping rules, and completion flow.",
	["gb_opt_travel"] = "Travel System",
	["gb_opt_desc_travel"] = "Waypoint provider selection and travel-system behavior.",
	["gb_opt_map"] = "Maps & Waypoints",
	["gb_opt_desc_map"] = "Arrow style, minimap/map marker display, and waypoint visuals.",
	["gb_opt_notifications"] = "Notifications",
	["gb_opt_desc_notifications"] = "Progress/completion flash and attention cues.",
	["gb_opt_actionbuttons"] = "Action Buttons",
	["gb_opt_desc_actionbuttons"] = "Clickable step/goal interaction display behavior.",
	["gb_opt_convenience"] = "Questing",
	["gb_opt_desc_convenience"] = "Auto accept/turn-in and quality-of-life quest helpers.",
	["gb_opt_accessibility"] = "Accessibility",
	["gb_opt_desc_accessibility"] = "Color visibility and readability options for improved accessibility.",
	["gb_opt_profile"] = "Profiles",
	["gb_opt_desc_profile"] = "Per-character/global profile management and copy/reset tools.",
	["gb_opt_about"] = "About",
	["gb_opt_desc_about"] = "Version, support, and diagnostics/bug-report tools.",
	["gb_opt_advanced"] = "Advanced",
	["gb_opt_desc_advanced"] = "Debug tools, diagnostics, and developer-facing controls.",
	["gb_opt_general"] = "General",
	["gb_opt_desc_general"] = "General settings.",
	["gb_title_viewer"] = "Viewer",
	["gb_options_viewer_desc"] = "Core viewer behavior, guide loading, and basic addon controls.",
	["gb_hint_search_settings"] = "Tip:\nUse search on the left to quickly find a settings page.",
	["gb_hint_options_filter"] = "Tip:\nSearch on the left filters options pages.\nUse Open Full Options for the full Blizzard panel view.",
	["gb_empty_no_guides_search"] = "No guides match this search.",
	["gb_empty_no_guides_category"] = "No guides in this category.",
	["gb_empty_no_current_guide"] = "No current guide loaded.",
	["gb_empty_no_current_guide_short"] = "No current guide loaded",
	["gb_empty_no_recent_guides"] = "No recent guides yet.",
	["gb_empty_no_featured_match"] = "No featured suggestions match this filter.",
	["gb_empty_no_featured_suggestions"] = "No Featured Suggestions",
	["gb_empty_no_favorites"] = "No favorite guides yet.",
	["gb_no_guide_selected"] = "No guide selected",
	["gb_action_clear_search"] = "Clear search",
	["gb_action_show_all_categories"] = "Show all categories",
	["gb_action_go_home"] = "Go to Home",
	["gb_action_open_home"] = "Open Home",
	["gb_action_reset_snoozed"] = "Reset snoozed suggestions",
	["gb_action_clear_search_restore"] = "Clear search to restore suggestions",
	["gb_action_reset_snoozed_restore"] = "Reset snoozed suggestions to restore recommendations",
	["gb_action_try_home"] = "Try Home to browse all categories",
	["gb_action_browse_all_from_home"] = "Browse all guides from Home",
	["gb_action_back_to_guides"] = "Back to Guides",
	["gb_action_open_full_options"] = "Open Full Options",
	["gb_action_go_current_folder"] = "Go to Current Guide Folder",
	["gb_action_resume"] = "Resume",
	["gb_action_restart"] = "Restart",
	["gb_nav_navigation"] = "Navigation",
	["gb_nav_back"] = "Back",
	["gb_nav_reset_to_root"] = "Reset to Category Root",
	["gb_featured_bucket_next"] = "Next Up",
	["gb_featured_bucket_progress"] = "In Progress",
	["gb_featured_bucket_level"] = "Around Your Level",
	["gb_featured_bucket_featured"] = "Featured Routes",
	["gb_featured_confidence_strong"] = "Strong",
	["gb_featured_confidence_good"] = "Good",
	["gb_featured_confidence_fallback"] = "Fallback",
	["gb_roadmap"] = "Roadmap",
	["gb_roadmap_bucket_format"] = "%s Roadmap",
	["gb_bucket_preview_next_with_title"] = "Continue your chain: %s",
	["gb_bucket_preview_next"] = "Continue your chain",
	["gb_bucket_preview_progress_with_title"] = "Resume: %s",
	["gb_bucket_preview_progress"] = "Resume in-progress guides",
	["gb_bucket_preview_level_with_title"] = "Start level-fit: %s",
	["gb_bucket_preview_level"] = "Start level-fit guides",
	["gb_bucket_preview_featured_with_title"] = "Optional route: %s",
	["gb_bucket_preview_featured"] = "Optional routes and extras",
	["gb_meta_action"] = "Action",
	["gb_meta_suggestion"] = "Suggestion",
	["gb_meta_suggested"] = "Suggested",
	["gb_meta_current"] = "Current",
	["gb_meta_recommended"] = "recommended",
	["gb_meta_other_useful_option"] = "other useful option",
	["gb_meta_current_selection"] = "current selection",
	["gb_meta_suggestions_snoozed"] = "suggestions may be snoozed",
	["gb_meta_restore_recommendations"] = "restore recommendations",
	["gb_meta_filter_no_matches"] = "filter has no matches",
	["gb_meta_see_full_recommendations"] = "see full recommendations",
	["gb_meta_no_bucket_suggestions"] = "no suggestions in this bucket",
	["gb_meta_full_category_access"] = "full category access",
	["gb_meta_suggested_from"] = "Suggested from: %s",
	["gb_meta_confidence"] = "Confidence: %s",
	["gb_meta_why_prefix"] = "Why: ",
	["gb_meta_gain_prefix"] = "Gain: ",
	["gb_reason_recently_used"] = "recently used",
	["gb_reason_incomplete"] = "incomplete",
	["gb_reason_your_level_range"] = "your level range",
	["gb_reason_near_your_level"] = "near your level",
	["gb_reason_your_class"] = "your class",
	["gb_reason_your_race"] = "your race",
	["gb_reason_your_profession"] = "your profession",
	["gb_reason_favorite"] = "favorite",
	["gb_reason_current_chain"] = "current chain",
	["gb_reason_chain_step_format"] = "chain step +%d",
	["gb_reason_inferred_continuation"] = "inferred continuation",
	["gb_reason_chapter_continuation"] = "chapter continuation",
	["gb_tooltip_featured_controls"] = "Featured suggestion controls",
	["gb_tooltip_featured_click"] = "Click the X: snooze for 24 hours",
	["gb_tooltip_featured_shift_click"] = "Shift-click X: hide for this session",
	["gb_tooltip_featured_restore"] = "Press R or use reset in options to restore.",
	["gb_tooltip_snooze"] = "Snooze suggestion",
	["gb_tooltip_snooze_click"] = "Click: hide for 24 hours",
	["gb_tooltip_snooze_shift_click"] = "Shift-click: hide for this session",
	["gb_tooltip_why_prefix"] = "Why: ",
	["gb_tooltip_gain_prefix"] = "Gain: ",
	["gb_tooltip_confidence_prefix"] = "Confidence: ",
	["gb_tooltip_chain_prefix"] = "Chain: ",
	["gb_tooltip_fallback_recommendation"] = "Fallback recommendation",
	["gb_current_guide"] = "Current Guide",
	["gb_options_fallback_embed_unavailable"] = "Embedded options unavailable. Click Options again to open Blizzard Interface Options.",
	["gb_options_fallback_missing_widgets"] = "Embedded options unavailable. Missing AceGUI embed widgets.",
	["gb_options_fallback_render_error"] = "Could not render embedded options: %s",
	["opt_legacyguideddropdown"] = "Legacy Guide Dropdown",
	["opt_featured_header"] = "Featured Suggestions",
	["opt_featured_enablefallback"] = "Enable fallback suggestions",
	["opt_featured_enablefallback_desc"] = "When a Featured bucket has no direct matches, show a few useful fallback guides.",
	["opt_featured_hiderecentcompleted"] = "Hide recently completed guides",
	["opt_featured_hiderecentcompleted_desc"] = "Suppress very recently completed guides from smart Featured recommendations.",
	["opt_featured_showconfidence"] = "Show confidence labels",
	["opt_featured_showconfidence_desc"] = "Display Strong/Good/Fallback confidence markers in Featured rows.",
	["opt_featured_resethidden"] = "Reset snoozed suggestions",
	["opt_featured_resethidden_desc"] = "Restore any Featured suggestions snoozed with the dismiss button.",
	["opt_disablerouteloopstacking"] = "Disable Route/Loop Stacking",
	["opt_disablerouteloopstacking_desc"] = "Prevent route and loop sections from stacking in the same featured bucket.",
	["opt_accessibility_intro"] = "Adjust visual accessibility options for color and text clarity.",
	["opt_colorblindmode"] = "Colorblind Mode",
	["opt_colorblindmode_desc"] = "Override guide, arrow, and distance colors with colorblind-friendly palettes. Also forces simplified arrow noun colors with optimized contrast.",
	["opt_colorblindmode_off"] = "Off",
	["opt_colorblindmode_protanopia"] = "Protanopia",
	["opt_colorblindmode_deuteranopia"] = "Deuteranopia",
	["opt_colorblindmode_tritanopia"] = "Tritanopia",
	["opt_colorblindmode_global"] = "Global",
	["opt_colorblindmode_custom"] = "Custom",
	["opt_arrowcolor_far"] = "Far",
	["opt_arrowcolor_mid"] = "Mid",
	["opt_arrowcolor_near"] = "Near",
	["opt_simplifyarrownouncolors"] = "Simplified Arrow Noun Colors",
	["opt_simplifyarrownouncolors_desc"] = "Use cleaner, higher-contrast colors for arrow noun labels.",
	["opt_about_heading"] = "Zygor Guides Viewer Remastered for WoTLK 3.3.5a",
	["opt_about_support"] = "Support",
	["opt_about_diag"] = "Tip: `/zygor status` and `/zygor debug` help with troubleshooting.",
	["opt_showminimapicons"] = "Show minimap icons",
	["opt_showminimapicons_desc"] = "Show icons on the minimap",
	["opt_iconalpha"] = "Icon alpha",
	["opt_iconalpha_desc"] = "Alpha transparency of map note icons",
	["opt_iconsize"] = "Icon size",
	["opt_iconsize_desc"] = "Size of the icons on the map",
	["opt_arrowshow"] = "Show Arrow",
	["opt_arrowshow_desc"] = "Show or hide the internal waypoint arrow.",
	["opt_arrowcolormode_direction"] = "Direction",
	["opt_arrowcolormode_distance"] = "Distance",
	["opt_arrowtextoutline"] = "Arrow Text Outline",
	["opt_arrowtextoutline_desc"] = "Choose outline strength for waypoint arrow text.",
	["opt_arrowtextoutline_default"] = "Default",
	["opt_arrowtextoutline_strong"] = "Strong",
	["opt_arrowtextoutline_reduced"] = "Reduced",
	["opt_remasterpointeronlegacy"] = "Use Remastered Pointer on Legacy Skins",
	["opt_remasterpointeronlegacy_desc"] = "When enabled, legacy skins use the remastered waypoint arrow style.",
	["opt_resetarrowposition"] = "Reset Arrow Position",
	["opt_resetarrowposition_desc"] = "Reset the waypoint arrow to retail default position.",
	["opt_foglightdebug"] = "(Debug) Check foglight",
	["opt_foglightdebug_desc"] = "Check foglighting for the current map",
	["opt_travelsystem_intro"] = "Choose how travel and waypoint providers are handled.",
	["opt_mapswaypoints_intro"] = "Configure map markers and internal arrow visuals.",
	["opt_notifications_intro"] = "Configure visual notification cues while progressing through steps.",
	["opt_actionbuttons_intro"] = "Configure goal icon and interactive step presentation.",
	["opt_actionbar_enable"] = "Enable Action Bar",
	["opt_actionbar_enable_desc"] = "Show a movable action bar for the current step's actionable goals.",
	["opt_inlinebuttons_enable"] = "Enable Inline Buttons",
	["opt_inlinebuttons_enable_desc"] = "Show actionable talk/kill buttons directly inside step lines. These are hidden when step line icons are disabled or the action bar is disabled.",
	["opt_actionbar_onlywhenneeded"] = "Show Only When Needed",
	["opt_actionbar_onlywhenneeded_desc"] = "Hide the action bar when the current step has no actionable buttons.",
	["opt_actionbar_locked"] = "Lock Action Bar Position",
	["opt_actionbar_locked_desc"] = "Prevent the action bar from being dragged.",
	["opt_actionbar_scale"] = "Action Bar Scale",
	["opt_actionbar_scale_desc"] = "Scale of the action bar.",
	["opt_actionbar_size"] = "Button Size",
	["opt_actionbar_size_desc"] = "Size of each action bar button.",
	["opt_actionbar_spacing"] = "Button Spacing",
	["opt_actionbar_spacing_desc"] = "Spacing between action bar buttons.",
	["opt_actionbar_pinside"] = "Pinned Side",
	["opt_actionbar_pinside_desc"] = "Choose which side of the viewer the snapped action bar should attach to.",
	["opt_actionbar_pinside_top"] = "Top",
	["opt_actionbar_pinside_bottom"] = "Bottom",
	["opt_actionbar_pinside_left"] = "Left",
	["opt_actionbar_pinside_right"] = "Right",
	["opt_actionbar_resetanchor"] = "Reset Action Bar Position",
	["opt_actionbar_resetanchor_desc"] = "Reset the action bar to its default snapped position.",
	["opt_actionbar_markers"] = "Enable Target Markers",
	["opt_actionbar_markers_desc"] = "Attempt to place raid target markers on talk and kill targets when possible.",
	["opt_targetpreview_header"] = "Target Preview",
	["opt_targetpreview_intro"] = "Show a movable preview pane for the current talk or kill target.",
	["opt_targetpreview_enable"] = "Enable Target Preview",
	["opt_targetpreview_enable_desc"] = "Show a movable preview pane for the current step's talk and kill targets.",
	["opt_targetpreview_onlywhenneeded"] = "Show Only When Relevant",
	["opt_targetpreview_onlywhenneeded_desc"] = "Hide the preview pane when the current step has no talk or kill target to preview.",
	["opt_targetpreview_locked"] = "Lock Preview Position",
	["opt_targetpreview_locked_desc"] = "Prevent the target preview pane from being dragged.",
	["opt_targetpreview_scale"] = "Preview Scale",
	["opt_targetpreview_scale_desc"] = "Scale of the target preview pane.",
	["opt_targetpreview_width"] = "Preview Width",
	["opt_targetpreview_width_desc"] = "Width of the target preview pane.",
	["opt_targetpreview_height"] = "Preview Height",
	["opt_targetpreview_height_desc"] = "Height of the target preview pane.",
	["opt_targetpreview_pinside"] = "Pinned Side",
	["opt_targetpreview_pinside_desc"] = "Choose which side of the viewer the snapped target preview should attach to.",
	["opt_targetpreview_growth"] = "Growth Direction",
	["opt_targetpreview_growth_desc"] = "Choose whether the snapped target preview should match the viewer's resize direction, grow upward, or grow downward.",
	["opt_targetpreview_growth_auto"] = "Match Viewer",
	["opt_targetpreview_growth_up"] = "Grow Up",
	["opt_targetpreview_growth_down"] = "Grow Down",
	["opt_targetpreview_mode"] = "Preview Mode",
	["opt_targetpreview_mode_desc"] = "Choose whether the preview prefers a live 3D model, a styled info card, or both.",
	["opt_targetpreview_mode_hybrid"] = "Hybrid",
	["opt_targetpreview_mode_model"] = "3D Only",
	["opt_targetpreview_mode_card"] = "Info Card Only",
	["opt_targetpreview_resetanchor"] = "Reset Target Preview Position",
	["opt_targetpreview_resetanchor_desc"] = "Reset the target preview pane to its default snapped position.",
	["targetpreview_title"] = "Target Preview",
	["targetpreview_title_locked"] = "Target Preview",
	["targetpreview_role_talk"] = "Talk to",
	["targetpreview_role_kill"] = "Kill",
	["targetpreview_hint"] = "Click to target\nthis creature.",
	["targetpreview_hint_empty"] = "No talk or kill target is active on this step.",
	["targetpreview_empty_name"] = "No Target",
	["targetpreview_level"] = "Level",
	["targetpreview_class_boss"] = "Boss",
	["targetpreview_class_elite"] = "Elite",
	["targetpreview_class_rareelite"] = "Rare Elite",
	["targetpreview_class_rare"] = "Rare",
	["actionbutton_bar_title"] = "Drag to move Action Buttons",
	["actionbutton_bar_title_locked"] = "Action Buttons",
	["actionbutton_tooltip_talk"] = "Target %s and try to mark it with a green triangle.",
	["actionbutton_tooltip_kill"] = "Target %s and try to mark it with a skull.",
	["actionbutton_tooltip_script"] = "Run the current step script macro.",
	["actionbutton_tooltip_petaction"] = "Use the suggested pet action.",
	["frame_toolbar_guides"] = "Guides",
	["frame_toolbar_guides_click"] = "to open guide menu",
	["frame_toolbar_guides_right"] = "to open guide manager",
	["frame_toolbar_close"] = "Close",
	["frame_toolbar_close_click"] = "to close",
	["frame_toolbar_settings"] = "Settings",
	["frame_toolbar_settings_click"] = "for quick menu",
	["frame_toolbar_settings_right"] = "to open guide manager options",
	["frame_toolbar_stepview"] = "Step View",
	["frame_toolbar_stepview_showall"] = "to show all",
	["frame_toolbar_stepview_showonly"] = "to show only |cffffffff%s|r",
	["frame_toolbar_stepview_setcount"] = "to set number of steps",
	["frame_toolbar_stepview_options"] = "to open Step Display options",
	["frame_toolbar_unlock"] = "Unlock Window",
	["frame_toolbar_unlock_click"] = "to unlock",
	["frame_toolbar_lock"] = "Lock Window",
	["frame_toolbar_lock_click"] = "to lock",
	["frame_title_default"] = "Zygor Guides",
	["frame_tab_guides"] = "Guides",
	["frame_tab_spots"] = "Spots",

	['gold_missing_nospotsinrange'] = "No gold spots within range.",
	['gold_missing_noguidesloaded'] = "No gold guides are loaded!",

	['gold_header_drop'] = "Drops from |cffffdddd%s|r:",
	['gold_header_ore'] = "Ore deposits:",
	['gold_header_herb'] = "Herbs:",
	['gold_header_skin'] = "Skins:",
	['gold_header_vendor'] = "Buy:", -- from |cffddffdd%s|r:",

	-- Gold Guide system strings
	["gold_app_no_goldguide"] = "Open Gold Guide (/zgold) to load trend data.",
	["gold_app_no_goldguide_short"] = "Open /zgold to load guides. ",
	["gold_app_no_goldguide_tooltip"] = "Open the Gold Guide window to initialize trend data from AH scans.",
	["gold_app_no_scan_data"] = "Current prices unknown. Scan the Auction House.",
	["gold_app_no_scan_data_short"] = "Current prices unknown.",
	["gold_app_no_scan_data_tooltip"] = "Scan the Auction House to collect current price data.",
	["gold_app_no_servertrends"] = "No trend data. Scan daily to build trends.",
	["gold_app_no_servertrends_short"] = "No trend data. ",
	["gold_app_no_servertrends_tooltip"] = "Scan the AH daily to build price trend data.",
	["gold_app_old_scan_data"] = "Scan data is outdated. Scan to update.",
	["gold_app_old_scan_data_short"] = "Scan to update.",
	["gold_app_old_scan_data_tooltip"] = "Scan the AH to update price data.",
	["gold_app_old_servertrends"] = "Trend data is out of date (%s). Scan to update.",
	["gold_app_old_servertrends_short"] = "Trend data is out of date (%s). ",
	["gold_app_old_servertrends_tooltip"] = "Trend data is outdated. Scan daily.",
	["gold_app_trend_tooltip"] = "Trend data is built from AH scans. Scan daily for better data.",
	["gold_auctions_error_noresults"] = "No profitable auctions found.",
	["gold_crafting_error_noprofessions"] = "You don't have a crafting profession.",
	["gold_crafting_error_noresults"] = "No profitable crafted items found.",
	["gold_crafting_error_recipesnotcached"] = "No recipes found. Open your tradeskills window first.",
	["gold_farming_error_noitemtype"] = "No farmable %s items found for your level.",
	["gold_farming_error_noresults"] = "No farmable items found for your level.",
	["gold_gathering_error_all_noprofessions"] = "You have not learned any Gathering profession.",
	["gold_gathering_error_one_noresults"] = "No gathering routes for %s found profitable.",
	["gold_gathering_error_one_noskillin"] = "You have not learned %s.",
	["gold_gathering_error_one_noskillin_skills"] = "\n\nYour gathering professions: %s",
	["gold_gathering_error_one_nothing"] = "No gathering routes found.\n\nYour gathering professions: %s",
	["gold_gathering_error_prof"] = "%s (%d)",
	["gold_gathering_no_results"] = "You need a Gathering profession: Skinning, Herbalism, or Mining.",
	["gold_general_open_window1"] = "\nOpen your Professions window to cache recipes.",
	["gold_general_open_window2"] = "\nOpen your Professions window to cache recipes.",
	["gold_expertmode_easylabel"] = "Easy",
	["gold_expertmode_easytooltip"] = "Only show items which should sell fast.",
	["gold_expertmode_expertlabel"] = "Expert",
	["gold_expertmode_experttooltip"] = "Show both fast- and slow-selling items.\nYou may end up with merchandise selling for days.",
	["gold_expertmode_generictooltip"] = "Set investment mode.",
	["opt_quickscan_warning"] = "Quick scan mode - item links not collected.",

	-- ItemScore & Gear Advisor
	["itemscore_ae_equip"] = "Equip %s",
	["itemscore_ae_over"] = " over %s",
	["itemscore_ae_equip1"] = "Replace this item",
	["itemscore_ae_equip2"] = "Equip this item",
	["itemscore_ae_with"] = "with",
	["itemscore_ae_accept"] = "Equip",
	["itemscore_ae_decline"] = "Not now",
	["itemscore_ae_report_tip"] = "Hold Shift and click to see a detailed gear report.\nItems you decline won't be suggested again.",
	["itemscore_questitem1"] = "A quest requires this item.",
	["itemscore_questitem2"] = "Equip this for the current quest step?",
	["itemscore_questitem3"] = "Re-equip your previous item?",
	["notifcenter_gear_title"] = "Gear Advisor",
	["notifcenter_gear_text"] = "Upgrade found",
	["notifcenter_gear_text_sl"] = "%d upgrade found",
	["notifcenter_gear_text_pl"] = "%d upgrades found",
	["notifcenter_gear_equipped"] = "Equipped %s in %s slot",
	["notifcenter_quest_text"] = "Quest item",
	["notifcenter_gen_popup_tooltip"] = "Click to open",
	["popup_accept"] = "Accept",
	["popup_decline"] = "Decline",
	["opt_itemscore_ae_clearednotupgrade"] = "Declined upgrades list cleared.",
	["opt_itemscore_warning"] = "Edit stat weights for item scoring. Higher values mean the stat is more important for your spec.",
	["opt_gear_title"] = "Configure automatic gear scoring and upgrade detection.",
	["opt_gear_score_class"] = "Class:",
	["opt_gear_score_spec"] = "Spec:",
	["opt_gear_sources"] = "Gear Finder Sources",
	["opt_gear_sources_dungeons"] = "Dungeons",
	["opt_gear_sources_raids"] = "Raids",
	["gearfinder_title"] = "Gear Finder",
	["gearfinder_no_upgrade"] = "No upgrade found",
	["gearfinder_load_guide"] = "Load Guide",
	["gearfinder_suggested_dungeon"] = "Suggested dungeon:",
	["gearfinder_refresh"] = "Click to refresh",
	["gearfinder_status_searching"] = "Searching for upgrades%s",
	["gearfinder_status_searching_future"] = "Searching for future upgrades%s",
	["gearfinder_label_dungeon"] = "Dungeon:",
	["gearfinder_label_unknown"] = "Unknown",
	["gearfinder_label_inbags"] = "In bags:",
	["gearfinder_label_score"] = "Score: %d",
	["gearfinder_label_score_value"] = "%.1f score",
	["gearfinder_label_equipped"] = "Equipped",
	["gearfinder_label_empty"] = "Empty slot",
	["gearfinder_upgrade_percent"] = "+%d%% upgrade",
	["gearfinder_upgrade_percent_short"] = "%+.1f%%",
	["gearfinder_label_new_item"] = "New item",
	["gearfinder_label_delta_score"] = "%+.1f score",
	["gearfinder_label_best_gains"] = "Best gains: %s",
	["gearfinder_label_found"] = "Best found:",
	["gearfinder_label_future"] = "Future:",
	["gearfinder_items_found"] = "%d items found",
	["itemscore_ae_build"] = "Build",
	["frame_selectguide"] = "Load Guide",
	["frame_selectguide_left"] = "Click to load the dungeon guide",
	["gb_opt_optimization"] = "Optimization",
	["gb_opt_desc_optimization"] = "Performance-sensitive settings, arrow update cadence, and future optimization controls.",
	["opt_optimization_intro"] = "Adjust performance-sensitive behaviors for the internal arrow and reserve space for future Wrath-specific optimization controls.",
	["opt_optimization_arrow_header"] = "Arrow Performance",
	["opt_optimization_arrow_desc"] = "Control how often the built-in waypoint arrow updates. Lower rates reduce CPU usage; higher rates look smoother.",
	["opt_arrow_refresh_rate"] = "Arrow Refresh Rate",
	["opt_arrow_refresh_rate_desc"] = "Controls how frequently the built-in waypoint arrow updates. Lower values reduce CPU usage; higher values improve smoothness.",
	["opt_arrow_refresh_rate_20"] = "20 FPS (Legacy Default)",
	["opt_arrow_refresh_rate_30"] = "30 FPS (Recommended)",
	["opt_arrow_refresh_rate_60"] = "60 FPS (Smooth)",
	["opt_arrow_refresh_rate_unlimited"] = "Unlimited (Every Frame)",
	["opt_optimization_internal_only"] = "This setting only affects the built-in waypoint arrow when the internal waypointer is active.",
	["opt_optimization_routing_header"] = "Travel Routing",
	["opt_optimization_routing_desc"] = "Control how aggressively the built-in travel system calculates and prepares routes.",
	["opt_pathfinding_speed"] = "Route Calculation Budget",
	["opt_pathfinding_speed_desc"] = "Controls how much work LibRover does per update while building routes. Lower values reduce CPU spikes; higher values finish recalculations sooner.",
	["opt_pathfinding_speed_slow"] = "Slow (Lowest CPU)",
	["opt_pathfinding_speed_medium"] = "Medium",
	["opt_pathfinding_speed_fast"] = "Fast (Quickest Updates)",
	["opt_travel_full_linking_startup"] = "Build Full Travel Links At Startup",
	["opt_travel_full_linking_startup_desc"] = "Precompute more travel links when logging in. This can improve later route responsiveness at the cost of longer startup work.",
	["opt_optimization_memory_header"] = "Memory & Loading",
	["opt_optimization_memory_desc"] = "Future optimization target: lighter initial memory usage through more selective guide/step loading. Not implemented in this pass.",
	["opt_optimization_diagnostics_header"] = "Diagnostics",
	["opt_optimization_diagnostics_desc"] = "Future optimization target: lightweight FPS or memory diagnostics for profiling stutter and load spikes. Not implemented in this pass.",

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


-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "enUS", function() return {
--	["blabla"] = TRUE,
} end)

