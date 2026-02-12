local COLOR_TIP_MOUSE = "|cffeedd99"


ZygorTalentAdvisor_L("main", "enUS", function() return {
	['name'] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00Talent Advisor|r",
	['name_plain'] = "Zygor Talent Advisor",
	['desc'] = "Suggests which talents you should invest your talent points in on each level, for you to level optimally.",

	['opt_build_header'] = "Player build",
	['opt_build'] = "Select a build:",
	['opt_build_desc'] = "The Advisor will keep suggesting talents to pick up as you progress, to ensure this build serves you optimally.",
	['opt_petbuild_header'] = "Pet build",
	['opt_petbuild'] = "Select a build:",
	['opt_petbuild_desc'] = "Select a build for your current pet. Note that pet types differ, you must choose a suitable build.",
	['opt_build_none'] = "|cffbbbbbbNo target build",
	['opt_force'] = "Allow this build",
	['opt_force_desc'] = "Allow this build. By default, it's wisest to avoid combining incompatible or broken builds. By forcing this, you're taking your own responsibility for what happens - you may end up with a ridiculous build.",
	['opt_talentframe'] = "Talent Interface features",
	['opt_hints'] = "Show advice balloons",
	['opt_hints_desc'] = "Show advice as balloons indicating suggested talent upgrades:\n|cff00ff00+1|r ... |cff00ff00+5|r - upgrade this talent by # points,\n|cffffff00V|r - talent upgraded properly,\n|cffff0000X|r - talent overdone, remove points from it or you'll break the build.",
	['opt_preview'] = "Show target build's talent ranks",
	['opt_preview_desc'] = "Display final talent ranks, according to the selected build, as numbers in the talent rank boxes:\n|cff00ff000|cff888888/|cff0088ff2|r - upgrade this talent up to 2 ranks,\n|cff00ff002|cff888888/|cff00ff002|r - suggested rank reached,\n|cffffdd003|cff888888/|cffff00002|r - you have exceeded the suggested rank (and broken the build, unless you're in preview mode).",
	['opt_popup'] = "What shall we do when new talent points are available?",
	['opt_popup_desc'] = "Talent Advisor can pop up your talents frame or its own advice window, whenever new points are available for spending, or even automatically learn the suggested talents.",
	['opt_popup_0'] = "Nothing",
	['opt_popup_1'] = "Open the talents frame  |cffaaaaaa(for manual learning)|r",
	['opt_popup_2'] = "Open the advice window  |cffaaaaaa(for one-click learning)|r",
	['opt_popup_3'] = "Learn automatically  |cffffdd00(careful!)|r",
	['opt_popup_dock'] = "Dock the advice window onto the Talent Interface",
	['opt_popup_dock_desc'] = "When docked, the advice window appears and disappears with the Talent Interface.\nWhen not docked, it appears independently and can be moved anywhere.\nNote: you can just drag the advice window off the side of the Talent Interface to undock it, or back to dock it again.",


	['opt_petbuild_ferocity'] = "|cffff8888Ferocity|r",
	['opt_petbuild_tenacity'] = "|cffffff88Tenacity|r",
	['opt_petbuild_cunning'] = "|cffff88ffCunning|r",

	['status_badtalent0'] = "You have spent %d points in the talent '%s', while it is not used in the selected build.",
	['status_badtalent'] = "You have spent %d points in the talent '%s', while it only reaches rank %d in the selected build.",
	['status_oootalent'] = "Your talent '%s' is presently rank %d, instead of %d.",

	['status_green'] = "This build fits your character |cff88ff88correctly|r.",
	['status_green_pet'] = "This build fits your pet |cff88ff88correctly|r.",
	['status_yellow'] = "Your current talents match the selected build, they were just chosen |cffeeff44out of suggested order|r. You have enough talent points available to continue with the build, though.",
	['status_orange'] = "|cffffbb00Warning:|r Your current talents match the selected build, but they were chosen |cffffee44out of order|r and you |cffffee44don't|r have enough talent points available to return to the optimal build path. You will need %d more talent point(s) to again develop optimally.",
	['status_red'] = "|cffff0000Error:|r This build |cffff5555doesn't match|r your current talents. If you want to use this build, please reset your talents, or check the 'Allow this build' option to override safety measures.",
	['status_red_forced'] = "|cffff0000Warning:|r This build |cffff5555doesn't match|r your current talents, but we'll try to make the best out of it anyway.",
	['status_black_nopet'] = "|cffff0000Error:|r You do not have a pet active. Unable to activate a pet build.",
	['status_black_badpet'] = "|cffff0000Error:|r This build is incompatible with %s. Choose a %s type build, or change your pet.",
	['status_black_badblizzard'] = "This build contains broken Blizzard-style data.",
	['status_black_brokenbuild'] = "|cffff0000Error:|r |cffffaaaaThis build contains unrecognized talents. It is broken and unusable.|r\n%s",
	['status_black_builderror'] = "|cffff0000Error:|r |cffffaaaaThis build requires %d points in the talent '%s', while only %d are possible! It is broken and unusable|r.",
	['status_black_smallbuild'] = "|cffff0000Error:|r This build has only %d talents in it, while you have already spent %d. This build is either incomplete, or is a 'starting' build and not applicable anymore.",
	['status_black_complete'] = "This build is now complete.\nGo forth and be awesome.",
	['status_black_different'] = "This is a different build, but your character's build is complete.\nYou'd have to reset your talents or dualspec to change to this build.",
	['status_black_exceeded'] = "You have more points invested than this build has in total.\nThis is either a 'starting' or incomplete build.",

	-- popout
	['preview_button'] = "Preview",
	['preview_button_done'] = "Previewed",
	['preview_button_tooltip'] = "Click to use the Talent Preview mode to preview the suggested talents.",
	['learn_button_tooltip'] = "Click to accept the suggested talents.",
	['configure_button'] = "Configure",
	['configure_button_tooltip'] = "Click to set up a target build or configure the Advisor.",

	['window_header_buildlabel'] = "Build:",
	['window_header_build'] = "|cffffffff%s|r",
	['window_header_buildnone'] = "none",

	['window_suggestion_nobuild'] = "Click the Configure button below to set up a target build.",
	['window_suggestion_normal'] = "Suggested talents:",
	['window_suggestion_none'] = "No suggestions can be made.",
	['window_suggestion_nopoints'] = "You have no talent points available.",
	['window_status_orange'] = "Warning: you're off the suggested build path!|nYou need %d points more than you have.",
	['window_status_red'] = "Warning: this build is not compatible with your talents.",

	--[[
	['window_suggheader1_normal'] = "You have %d talent point(s) available!",
	['window_suggheader1_normal_pet'] = "Your pet has %d talent point(s) available!",
	['window_suggintro_normal'] = "Zygor Talent Advisor suggests that you take the following talent:",

	['window_header_preview'] = "You have %d talent point(s) available!",
	['window_header_preview_pet'] = "Your pet has %d talent point(s) available!",
	['window_intro_preview'] = "Zygor Talent Advisor suggests that you take the following talent:",

	['window_headerdone_preview'] = "All talent points assigned!",
	['window_introdone_preview'] = "Since you're using the talent preview mode, click below to learn your new talents.",

	['window_headernone'] = "You have no talent points available.",
	['window_headernone_pet'] = "Your pet has no talent points available.",
	--]]

	['warning_learn1_orange'] = "|cffffbb00Notice:|r\nFor the selected build, |cff5588ff%s|r, it is advised that you learn the %s talent |cffffff55%s|r at this point.\nThe talent you selected is indeed in this build, but it is not recommended at this point yet. Learning talents out of order may result in less than optimal progress.\nAre you sure you wish to learn |cffff5555%s|r now?",
	['warning_learn1_red0'] = "|cffff0000Warning!|r\nFor the selected build, |cff5588ff%s|r, you should |cffff7777never|r learn this talent!\nZygor Talent Advisor will be unable to help you with this build anymore.\nAre you absolutely sure you wish to learn it?",
	['warning_learn1_red'] = "|cffff0000Warning!|r\nFor the selected build, |cff5588ff%s|r, you should |cffff7777never|r exceed rank %s of |cffffff55%s|r.\nZygor Talent Advisor will be unable to help you with this build anymore.\nAre you absolutely sure you wish to do this?",
	['warning_preview_green'] = CONFIRM_LEARN_PREVIEW_TALENTS.."\n\n|cff00ff00Note:|r These talents match the |cff5588ff%s|r build plan, it is safe to learn them.",
	['warning_preview_orange'] = "|cffffbb00Notice:|r\nThe talents selected in the preview do not quite match the talents suggested for the selected build, |cff5588ff%s|r.\nIf you learn them, you will have to gain %d |1more talent point;more talent points; to again proceed with the build plan.\nAre you sure you wish to learn the talents you selected?",
	['warning_preview_red'] = "|cffff0000Warning!|r\nThe talents selected in the preview |cffff7777will prevent you|r from ever completing the selected build, |cff5588ff%s|r.\nZygor Talent Advisor will be unable to help you with this build anymore.\nAre you absolutely sure you wish to learn them?",

	['warning_bulklearn'] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r|r |cffffaa00Talent Advisor|r suggests the following talents for the selected build, '|cff5588ff%s|r':\n\n%s\n"..CONFIRM_LEARN_PREVIEW_TALENTS,

	['tutorial_ZTA1_title'] = "Zygor Talent Advisor: Basics",
	['tutorial_ZTA1_text'] = "The talents you choose for your character are one of the key aspects of World of Warcraft. However, it is often just as crucial to know which talents to concentrate on early, and which ones to leave for later.\n\nZygor Talent Advisor can guide you, level by level, towards achieving specially optimized builds.",
	['tutorial_ZTA2_title'] = "Zygor Talent Advisor: Talent Time",
	['tutorial_ZTA_text'] = "You have talent points available - however, you have not yet chosen a build. You can find build settings under Options - Interface - Addons - Zygor Talent Advisor.",
	['tutorial_ZTA3_title'] = "Zygor Talent Advisor: Suggestion",
	['tutorial_ZTA3_text'] = "You have talent points available, and the Advisor has a suggestion how you should spend them. Open your Talents window (press 'N') and look for hint bubbles: |cff55ff55+1|r, |cff55ff55+2|r, etc.",

	['minimap_tooltip'] = COLOR_TIP_MOUSE.."Click|r to show talent suggestions\n"..COLOR_TIP_MOUSE.."Right-click|r to configure",
	['minimap_tooltip_hunter'] = COLOR_TIP_MOUSE.."Click|r to show talent suggestions\n"..COLOR_TIP_MOUSE.."Shift-click|r to show pet talent suggestions\n"..COLOR_TIP_MOUSE.."Right-click|r to configure",

	['opt_mapbutton'] = "Show minimap button",
	['opt_mapbutton_desc'] = "Show the Zygor Talent Advisor button next to your minimap",

	['pattern_talentgained'] = "^You have gained (%d) talent point",
	['pattern_talentgained_pet'] = "^Your pet has learned a new talent",

	['error_bulklearn_nobuild'] = "You have not selected a build.",
	['error_bulklearn_nosuggestion'] = "No suggestions can be made at this point.",

	['msg_learned'] = "Learned the suggested talents.",
	['msg_learned_verbose'] = "Learned the suggested talents:",
	['msg_learned_verbose_talent'] = "  %s",

	['opt_report'] = "Create a bug report",
	['opt_report_desc'] = "Create a detailed report of this addon's current status, for debugging purposes.",

	['talenttooltip'] = "Rank for |cff5588ff%s|r build:  %s",

	['popout_button_tip'] = "Select a target build and have the Advisor suggest talents for you to pick anytime you have talent points to spend.",

	['binding_popout'] = "Show Suggestion Window",

	['glyphtype_1'] = "Major ",
	['glyphtype_2'] = "Minor ",
} end)
