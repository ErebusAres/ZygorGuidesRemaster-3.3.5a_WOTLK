if GetLocale()~="zhCN" then return end

ZygorGuidesViewer.LocaleFont = [[Fonts\ZYKai_T.ttf]]

ZygorGuidesViewer_L("Main", "zhCN", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor 指南查看器",
	["desc"] = "Zygor Guides Viewer %s 的主要设置。|n",

	['welcome_guides'] = "已加载 %d 个指引。",

	["opt_guide"] = "选择指引：",
	["opt_guide_steps"] = "步骤：%d",
	["opt_guide_author"] = "作者：%s",
	["opt_guide_next"] = "系列中的下一个：%s",

	["opt_report"] = "报告错误步骤",
	["opt_report_desc"] = "创建包含当前显示步骤详细信息的错误报告。复制并粘贴后发送给指引作者。",

	["opt_visible"] = "显示 Zygor Guides Viewer 窗口",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "战斗中隐藏指引",
	["opt_hideincombat_desc"] = "当屏幕空间紧张时，在战斗中隐藏所有指引窗口。",

	["opt_opacitymain"] = "透明度",
	["opt_opacitymain_desc"] = "主窗口透明度。",
	["opt_framescale"] = "缩放",
	["opt_framescale_desc"] = "可以按你的偏好调整窗口大小。",
	["opt_fontsize"] = "文字缩放",
	["opt_fontsize_desc"] = "设置首选文字大小。注意窗口缩放也会影响此项。",
	["opt_fontsecsize"] = "次级文字缩放",
	["opt_fontsecsize_desc"] = "设置次级文字大小，用于显示额外描述和备注。",
	["opt_backcolor"] = "背景颜色",
	["opt_backcolor_desc"] = "窗口背景颜色。",

	["opt_group_window"] = "窗口功能",
	["opt_miniresizeup"] = "向上扩展",
	["opt_miniresizeup_desc"] = "将窗口翻转，使其向上而不是向下扩展。适合放在屏幕底部时使用。",
	["opt_opacitymini"] = "背景透明度",
	["opt_opacitymini_desc"] = "步骤窗口背景透明度。",

	["opt_showcountsteps"] = "显示步骤：",
	["opt_showcountsteps_desc"] = "显示步骤数量。\n|cffffffaa全部|r 会在可滚动列表中显示所有步骤。\n|cffffffaa1-5|r 会将当前步骤置顶，并自动调整窗口大小，仅显示后续若干步骤。",
	["opt_showcountsteps_all"] = "全部",

	["opt_group_map"] = "路径点",
	["opt_group_map_desc"] = "这些设置控制 Zygor Guides Viewer 与地图类插件的交互方式。",
	["opt_group_map_waypointing"] = "路径点插件",
	["opt_group_map_waypointing_desc"] = "选择你希望用于 Zygor Guides Viewer 路径点处理的插件。",
	['opt_group_map_hidearrowwithguide'] = "关闭窗口时隐藏箭头",
	['opt_group_map_hidearrowwithguide_desc'] = "启用后，箭头显示将跟随指引窗口可见性。\n若希望隐藏指引时箭头仍显示，请不要勾选。",
	["opt_group_addons_internal"] = "内置路径点",
	["opt_group_addons_builtin"] = "内置路径点",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_carbonite"] = "Carbonite",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "无",
	["opt_debug"] = "调试",
	["opt_debug_desc"] = "显示调试信息。",
	["opt_debugging"] = "调试设置",
	["opt_debugging_desc"] = "调试选项。",

	["opt_autoskip"] = "自动前进",
	["opt_autoskip_desc"] = "当当前步骤条件全部完成时自动跳到下一步。部分条件过于复杂的步骤仍可能需要手动跳过。",

	["opt_goalicons"] = "显示步骤行图标",
	["opt_goalicons_desc"] = "显示反映完成状态的图标。",
	["opt_goalcolorize"] = "为已完成步骤行着色",
	["opt_goalcolorize_desc"] = "完成步骤行时，将整行着为绿色。",
	["opt_goalbackprogress"] = "按完成百分比应用颜色",
	["opt_goalbackprogress_desc"] = "以未完成与完成颜色之间的过渡色显示部分完成进度。|n关闭后，目标只会显示“未完成”或“完成”两种颜色。",

	["opt_group_step"] = "步骤目标",

	["opt_goalbackcolor_desc"] = "完成颜色：",
	["opt_goalbackgrounds"] = "背景着色",
	["opt_goalbackgrounds_desc"] = "为步骤行背景着色以反映完成状态。",
	["opt_goalbackcomplete"] = "完成",
	["opt_goalbackcomplete_desc"] = "此颜色用于表示已完成目标。",
	["opt_goalbackincomplete"] = "未完成",
	["opt_goalbackincomplete_desc"] = "此颜色用于表示未完成目标。",
	["opt_goalbackimpossible"] = "无法完成",
	["opt_goalbackimpossible_desc"] = "此颜色用于表示当前无法完成的目标。",

	['opt_tooltipsbelow'] = "在行内显示额外信息",
	['opt_tooltipsbelow_desc'] = "某些步骤行的额外信息可显示为行内文本，或在鼠标悬停时以提示框显示。",

	["opt_flash_desc"] = "进度提醒：",
	["opt_goalcompletionflash"] = "目标完成时闪烁",
	["opt_goalcompletionflash_desc"] = "当单个目标完成时使用视觉“闪烁”提示。",
	["opt_goalupdateflash"] = "目标进度变化时闪烁",
	["opt_goalupdateflash_desc"] = "当单个目标有进度时使用视觉“闪烁”提示。",
	["opt_flashborder"] = "步骤完成时闪烁窗口",
	["opt_flashborder_desc"] = "每当一个步骤完成时闪烁整个窗口。",

	["opt_group_display"] = "显示",
	["opt_group_display_desc"] = "设置你希望指引如何显示。",

	["opt_group_data"] = "内置指引存储",
	["opt_group_data_desc"] = "Zygor Guides Viewer 可以在内部存储商业指引（由于暴雪政策，这些内容不能以独立插件形式分发）。",
	["opt_group_data_guide"] = "内部存储的指引：",
	["opt_group_data_guide_desc"] = "从列表中选择一个内置指引进行编辑或删除。此列表不会显示作为独立插件加载的指引。",
	["opt_group_data_del"] = "删除指引",
	["opt_group_data_del_desc"] = "从内部存储中删除所选指引。",
	["opt_group_data_edit"] = "编辑指引",
	["opt_group_data_edit_desc"] = "将所选指引加载到下方编辑器窗口以进行手动修改。",
	["opt_group_data_entry"] = "指引数据：",
	["opt_group_data_entry_desc"] = "在此粘贴新指引（请记得将步骤包裹在：|nguide 指引标题|nsteps...|nsteps...|nend\n）；注意粘贴并解析较大指引（>30kB）可能需要几秒钟。",

	['opt_windowlocked'] = "锁定窗口",
	['opt_windowlocked_desc'] = "锁定窗口，使其不再响应鼠标交互。\n仅按钮仍可使用。",
	['opt_hideborder'] = "自动隐藏边框",
	['opt_hideborder_desc'] = "当鼠标离开窗口时自动隐藏窗口边框和按钮。\n将鼠标悬停在窗口标题片刻可再次显示。",

	['opt_skin'] = "窗口皮肤颜色",
	['opt_skin_desc'] = "选择窗口装饰颜色以匹配你的界面。",
	['opt_skin_violet'] = "|cffee55ff紫色",
	['opt_skin_green'] = "|cff88ff88绿色",
	['opt_skin_blue'] = "|cff99aaff蓝色",
	['opt_skin_orange'] = "|cffffbb00橙色",

	['opt_backopacity'] = "背景透明度",
	['opt_backopacity_desc'] = "窗口背景透明度。",

	["report_title"] = "按 Ctrl+C 复制此报告。|n然后将其发送给 |cffffffff%s|r 的作者，|n地址：|cffffffff%s|r。",
	["report_notitle"] = "|cffff8888（未命名指引？）|r",
	["report_noauthor"] = "|cffff8888（无可用地址）|r",

	["opt_mapbutton"] = "显示小地图按钮",
	["opt_mapbutton_desc"] = "在小地图旁显示 Zygor Guides Viewer 按钮",

	["minimap_tooltip"] = "|cffeedd99左键|r 切换指引窗口|n|cffeedd99右键|r 打开设置|n",

	["waypointaddon_set"] = "已选择路径点插件：%s",
	["waypointaddon_connecting"] = "正在连接路径点插件：%s",
	["waypointaddon_connected"] = "已成功连接到 %s。",
	["waypointaddon_fail"] = "连接 %s 失败。",
	['waypoint_step'] = "步骤 %s",

	["checkmap"] = "请查看地图。",

	["initialized"] = "初始化完成。",

	["miniframe_notloaded"] = "未加载任何升级指引。|n|n请前往 http://zygorguides.com 购买 Zygor 的 1-80 升级指引，或加载第三方指引。|n|n如果你确定已经安装了指引，请联系其作者获取安装排错帮助。",
	["miniframe_notselected"] = "当前未选择任何指引。\n请点击上方闪烁按钮以选择一个指引。",
	["miniframe_loading"] = "正在加载指引：%d%%",

	['frame_locked'] = "窗口已锁定",
	['frame_unlock'] = "|cffeedd99左键|r 解锁",
	['frame_unlocked'] = "窗口未锁定",
	['frame_lock'] = "|cffeedd99左键|r 锁定",
	['frame_settings'] = "设置",
	['frame_settings1'] = "|cffeedd99左键|r 打开菜单",
	['frame_settings2'] = "|cffeedd99右键|r 打开选项",
	['frame_minimized'] = "显示 |cffffffff%d|r 个步骤",
	['frame_maximized'] = "显示全部步骤",
	['frame_minimize'] = "|cffeedd99左键|r 仅显示 |cffffffff%d|r 个",
	['frame_minright'] = "|cffeedd99右键|r 设置显示步骤数",
	['frame_maximize'] = "|cffeedd99左键|r 显示全部",
	['frame_stepnav_prev'] = "上一步",
	['frame_stepnav_prev_click'] = "|cffeedd99左键|r：后退",
	['frame_stepnav_prev_right'] = "|cffeedd99右键|r：回退",
	['frame_stepnav_next'] = "下一步",
	['frame_stepnav_next_click'] = "|cffeedd99左键|r：前进",
	['frame_stepnav_next_right'] = "|cffeedd99右键|r：快速前进",
	['frame_section'] = "当前指引",
	['frame_section_click'] = "|cffeedd99点击|r 选择",

	['tooltip_tip'] = "|cff99ff00%s|r",
	['tooltip_waypoint'] = "|cffeedd99点击|r|cff00ff00 设置路径点：|cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "位置：|cffffaa00%s|r",

	["message_errorloading_full"] = "加载指引 |cffaaffaa%s|r 时发生 |cffff4444错误|r\n第 %d 行：%s\n错误：%s",
	["message_errorloading_brief"] = "加载指引 |cffaaffaa%s|r 时发生 |cffff4444错误|r",
	["message_loadedguide"] = "已启用指引：|cffaaffaa%s|r",
	["message_missingguide"] = "缺失指引：|cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer（未加载指引）",

	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaa等级：|cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "“%s”",
	["questtitle_part"] = "“%s”（第 %s 部分）",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "将炉石地点设置为 %s",
	["stepgoal_flightpath"] = "获取 %s 飞行点",

	["stepgoal_accept"] = "接受 %s",
	["stepgoal_turn in"] = "交付 %s",
	["stepgoal_talk to"] = "与 %s 对话",
	["stepgoal_kill"] = "击杀 %s",
	["stepgoal_kill #"] = "击杀 %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "获得 %s",
	["stepgoal_get #"] = "获得 %s %s",
	["stepgoal_ding"] = "你现在应为 %s 级。|n    若不是，请稍微刷怪直到达到该等级。",
	["stepgoal_go to"] = "前往 %s",
	["stepgoal_also at"] = "也在 %s",
	["stepgoal_hearth to"] = "炉石返回 %s",
	["stepgoal_collect"] = "收集 %s",
	["stepgoal_collect #"] = "收集 %s %s",
	["stepgoal_buy"] = "购买 %s %s",
	["stepgoal_fpath"] = "获取 %s 飞行点",
	["stepgoal_use"] = "使用 %s",
	["stepgoal_home"] = "将 %s 设为你的炉石地点",
	["stepgoal_petaction"] = "使用宠物技能 %s",
	["stepgoal_havebuff"] = "获得增益/减益“%s”",
	["stepgoal_nobuff"] = "失去增益/减益“%s”",
	["stepgoal_invehicle"] = "进入载具",
	["stepgoal_outvehicle"] = "离开载具",
	["stepgoal_equipped"] = "装备 %s",
	["stepgoal_at_suff"] = "（%s）",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	["completion_done"] = "(完成)",
	["completion_rep"] = "(%s)",

	["step_req"] = "此步骤仅对以下条件有效：%s",

	["map_highlight"] = "高亮",

	["stepreq"] = "步骤职业/种族要求：",
	["stepreqor"] = " 或 ",

	["opt_do_searchforgoal"] = "查找可完成目标",
	["searching_for_goal_success"] = "已找到一个可完成目标：%s。它可能是你在此指引中的合适起点。",
	["searching_for_goal_failed"] = "未找到可完成目标。请尝试其他指引或章节、先接一些任务，或从章节开头再次搜索（搜索只会向前进行）。",


	["going"] = "%d%% ?? %s",
	["opt_stepnumber"] = "??????",
	["opt_stepnumber_desc"] = "???????????????\n??????????",
	["opt_hidestepborders"] = "????",
	["opt_hidestepborders_desc"] = "????????????",
	["opt_stepbackopacity"] = "?????",
	["opt_stepbackopacity_desc"] = "??????????\n???????????????????",
	["opt_goalbackprogressing"] = "????",
	["opt_goalbackprogressing_desc"] = "?????????? 50%?",
	["opt_progressbackcolor_desc"] = "?????",
	["opt_goalbackaux"] = "??",
	["opt_goalbackaux_desc"] = "??????????",
	["opt_goalbackobsolete"] = "??",
	["opt_goalbackobsolete_desc"] = "???????????????",
	["opt_resetwindow"] = "????",
	["opt_resetwindow_desc"] = "?????????????????????",
	["opt_trackchains"] = "?????",
	["opt_trackchains_desc"] = "?????????????????????????\n\n????????????????????????????????????????????????",
	["opt_guidesinhistory"] = "??????",
	["opt_guidesinhistory_desc"] = "?????????????",
	["opt_skin_remaster"] = "|cffc7d9ffRemaster????",
	["opt_group_progress"] = "????",
	["opt_group_progress_desc"] = "??????????????????????????????",
	["opt_levelsahead"] = "??????",
	["opt_levelsahead_desc"] = "?????????????????\n??? 0 ????????????????????????\n??? 1 ?????????????????????",
	["opt_showobsolete"] = "??????",
	["opt_showobsolete_desc"] = "????????????\n??????????????????",
	["opt_skipobsolete"] = "??????",
	["opt_skipobsolete_desc"] = "?????????",
	["opt_skipauxsteps"] = "??????",
	["opt_skipauxsteps_desc"] = "???????????????????????????\n????????????????????",
	["opt_skipflightsteps"] = "???????",
	["opt_skipflightsteps_desc"] = "??????????????????????????????\n\n?????????????????????",
	["opt_skipimpossible"] = "????????",
	["opt_skipimpossible_desc"] = "?????????????????????????????",
	["opt_group_progress_bottomdesc"] = "????????????????????????????????????????????????????????????\n\n?????????????????????????????????????????????????????????????????\n\n???????????????????????????????????????????????????????????",
	["opt_group_mapinternal"] = "?????",
	["opt_arrowmeters"] = "????",
	["opt_arrowmeters_desc"] = "?????????????",
	["opt_arrowfreeze"] = "??????",
	["opt_arrowfreeze_desc"] = "???????????????????",
	["opt_arrowcam"] = "??????",
	["opt_arrowcam_desc"] = "?????????????????????\n\n???????????????????????",
	["opt_arrowcolordir"] = "????",
	["opt_arrowcolordir_desc"] = "??????????????????????\n\n?????????????",
	["opt_arrowscale"] = "????",
	["opt_arrowscale_desc"] = "?????",
	["opt_arrowfontsize"] = "??????",
	["opt_arrowfontsize_desc"] = "??????????",
	["opt_minimapzoom"] = "???????",
	["opt_minimapzoom_desc"] = "??????????????????????",
	["opt_foglight"] = "??????",
	["opt_foglight_desc"] = "??????????????????????",
	["opt_group_gold"] = "????",
	["opt_group_gold_desc"] = "???????????????????",
	["opt_gold_detectiondist"] = "????",
	["opt_gold_detectiondist_desc"] = "???????????????",
	["opt_gold_reqmode"] = "????",
	["opt_gold_reqmode_desc"] = "????????????",
	["opt_gold_reqmode_all"] = "??",
	["opt_gold_reqmode_current"] = "?????",
	["opt_gold_reqmode_future"] = "?? + ????",
	["gold_missing_noguidesloaded"] = "????????",
	["gold_missing_nospotsinrange"] = "?????????????",
	["gold_header_ore"] = "???",
	["gold_header_herb"] = "???",
	["gold_header_skin"] = "??????",
	["gold_header_drop"] = "|cffffdddd%s|r ????",
	["opt_group_convenience"] = "????",
	["opt_group_convenience_desc"] = "????????????",
	["opt_autoaccept"] = "?????",
	["opt_autoaccept_desc"] = "?????????",
	["opt_autoturnin"] = "?????",
	["opt_autoturnin_desc"] = "??????????",
	["opt_fixblizzardautoaccept"] = "?????????",
	["opt_fixblizzardautoaccept_desc"] = "????????????????????/????????????",
	["opt_audiocues"] = "????",
	["opt_audiocues_desc"] = "??????????????",
	["opt_analyzereps"] = "????",
	["opt_analyzereps_desc"] = "??????????????????????????",
	["opt_mapcoords"] = "??????",
	["opt_mapcoords_desc"] = "???????????????",
	["stepgoal_rep"] = "?? %s ???%s?",
	["stepgoal_achieve"] = "?????%s?",
	["stepgoal_achievesub"] = "???%s???????%s?",
	["stepgoal_skill"] = "? %s ??? %s",
	["stepgoal_skillmax"] = "? %s ??????? %s",
	["stepgoal_learn"] = "???? %s",
	["stepgoal_or"] = "  - ? -",
	["stepgoalshort_complete"] = "??",
	["stepgoalshort_incomplete"] = "???",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
	["waypointaddon_detecting"] = "?????????????...",
	["waypointaddon_disconnected"] = "?? |cffddeeff%s|r ?????",
	["pointer_corpselabel1"] = "????",
	["pointer_corpselabel2"] = "??????...",
	["pointer_corpselabel3"] = "???????????",
	["pointer_corpselabel4"] = "?????",
	["pointer_corpselabel5"] = "????????",
	["req_not"] = "? %s",
	["haman$"] = "hamans",
	["(%a)man$"] = "%1men",

	["binding_togglewindow"] = "显示指引窗口",
	["binding_prev"] = "上一步",
	["binding_next"] = "下一步",
	["menu_last"] = "最近使用的指引：",
	["menu_last_entry"] = "%s |cffaaaaaa步骤|r %d",
} end)

local plurals = {
}

ZygorGuidesViewer_L("Specials", "zhCN", function() return {
	["plural"] = function (word)
		return word
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
		return ZygorGuidesViewer_L("Specials")['plural'](s)
	end,
} end)

ZygorGuidesViewer_L("G_string", "zhCN", function() return {
} end)
