if GetLocale()~="zhTW" then return end

ZygorGuidesViewer.LocaleFont = [[Fonts\bLEI00D.ttf]]

ZygorGuidesViewer_L("Main", "zhTW", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor 指南檢視器",
	["desc"] = "Zygor Guides Viewer %s 的主要設定。|n",

	['welcome_guides'] = "已載入 %d 個指引。",

	["opt_guide"] = "選擇指引：",
	["opt_guide_steps"] = "步驟：%d",
	["opt_guide_author"] = "作者：%s",
	["opt_guide_next"] = "系列中的下一個：%s",

	["opt_report"] = "報告錯誤步驟",
	["opt_report_desc"] = "建立包含當前顯示步驟詳細資訊的錯誤報告。複製並貼上後傳送給指引作者。",

	["opt_visible"] = "顯示 Zygor Guides Viewer 視窗",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "戰鬥中隱藏指引",
	["opt_hideincombat_desc"] = "當螢幕空間緊張時，在戰鬥中隱藏所有指引視窗。",

	["opt_opacitymain"] = "透明度",
	["opt_opacitymain_desc"] = "主視窗透明度。",
	["opt_framescale"] = "縮放",
	["opt_framescale_desc"] = "可以按你的偏好調整視窗大小。",
	["opt_fontsize"] = "文字縮放",
	["opt_fontsize_desc"] = "設定首選文字大小。注意視窗縮放也會影響此項。",
	["opt_fontsecsize"] = "次要文字縮放",
	["opt_fontsecsize_desc"] = "設定次要文字大小，用於顯示額外描述和備註。",
	["opt_backcolor"] = "背景顏色",
	["opt_backcolor_desc"] = "視窗背景顏色。",

	["opt_group_window"] = "視窗功能",
	["opt_miniresizeup"] = "向上擴展",
	["opt_miniresizeup_desc"] = "將視窗翻轉，使其向上而不是向下擴展。適合放在螢幕底部時使用。",
	["opt_opacitymini"] = "背景透明度",
	["opt_opacitymini_desc"] = "步驟視窗背景透明度。",

	["opt_showcountsteps"] = "顯示步驟：",
	["opt_showcountsteps_desc"] = "顯示步驟數量。\n|cffffffaa全部|r 會在可捲動清單中顯示所有步驟。\n|cffffffaa1-5|r 會將當前步驟置頂，並自動調整視窗大小，僅顯示後續若干步驟。",
	["opt_showcountsteps_all"] = "全部",

	["opt_group_map"] = "路徑點",
	["opt_group_map_desc"] = "這些設定控制 Zygor Guides Viewer 與地圖類插件的互動方式。",
	["opt_group_map_waypointing"] = "路徑點插件",
	["opt_group_map_waypointing_desc"] = "選擇你希望用於 Zygor Guides Viewer 路徑點處理的插件。",
	['opt_group_map_hidearrowwithguide'] = "關閉視窗時隱藏箭頭",
	['opt_group_map_hidearrowwithguide_desc'] = "啟用後，箭頭顯示將跟隨指引視窗可見性。\n若希望隱藏指引時箭頭仍顯示，請不要勾選。",
	["opt_group_addons_internal"] = "內建路徑點",
	["opt_group_addons_builtin"] = "內建路徑點",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_carbonite"] = "Carbonite",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "無",
	["opt_debug"] = "除錯",
	["opt_debug_desc"] = "顯示除錯資訊。",
	["opt_debugging"] = "除錯設定",
	["opt_debugging_desc"] = "除錯選項。",

	["opt_autoskip"] = "自動前進",
	["opt_autoskip_desc"] = "當當前步驟條件全部完成時自動跳到下一步。部分條件過於複雜的步驟仍可能需要手動跳過。",

	["opt_goalicons"] = "顯示步驟行圖示",
	["opt_goalicons_desc"] = "顯示反映完成狀態的圖示。",
	["opt_goalcolorize"] = "為已完成步驟行著色",
	["opt_goalcolorize_desc"] = "完成步驟行時，將整行著為綠色。",
	["opt_goalbackprogress"] = "按完成百分比套用顏色",
	["opt_goalbackprogress_desc"] = "以未完成與完成顏色之間的過渡色顯示部分完成進度。|n關閉後，目標只會顯示“未完成”或“完成”兩種顏色。",

	["opt_group_step"] = "步驟目標",

	["opt_goalbackcolor_desc"] = "完成顏色：",
	["opt_goalbackgrounds"] = "背景著色",
	["opt_goalbackgrounds_desc"] = "為步驟行背景著色以反映完成狀態。",
	["opt_goalbackcomplete"] = "完成",
	["opt_goalbackcomplete_desc"] = "此顏色用於表示已完成目標。",
	["opt_goalbackincomplete"] = "未完成",
	["opt_goalbackincomplete_desc"] = "此顏色用於表示未完成目標。",
	["opt_goalbackimpossible"] = "無法完成",
	["opt_goalbackimpossible_desc"] = "此顏色用於表示當前無法完成的目標。",

	['opt_tooltipsbelow'] = "在行內顯示額外資訊",
	['opt_tooltipsbelow_desc'] = "某些步驟行的額外資訊可顯示為行內文字，或在滑鼠懸停時以提示框顯示。",

	["opt_flash_desc"] = "進度提醒：",
	["opt_goalcompletionflash"] = "目標完成時閃爍",
	["opt_goalcompletionflash_desc"] = "當單一目標完成時使用視覺“閃爍”提示。",
	["opt_goalupdateflash"] = "目標進度變化時閃爍",
	["opt_goalupdateflash_desc"] = "當單一目標有進度時使用視覺“閃爍”提示。",
	["opt_flashborder"] = "步驟完成時閃爍視窗",
	["opt_flashborder_desc"] = "每當一個步驟完成時閃爍整個視窗。",

	["opt_group_display"] = "顯示",
	["opt_group_display_desc"] = "設定你希望指引如何顯示。",

	["opt_group_data"] = "內建指引儲存",
	["opt_group_data_desc"] = "Zygor Guides Viewer 可以在內部儲存商業指引（由於暴雪政策，這些內容不能以獨立插件形式分發）。",
	["opt_group_data_guide"] = "內部儲存的指引：",
	["opt_group_data_guide_desc"] = "從列表中選擇一個內建指引進行編輯或刪除。此列表不會顯示作為獨立插件載入的指引。",
	["opt_group_data_del"] = "刪除指引",
	["opt_group_data_del_desc"] = "從內部儲存中刪除所選指引。",
	["opt_group_data_edit"] = "編輯指引",
	["opt_group_data_edit_desc"] = "將所選指引載入到下方編輯器視窗以進行手動修改。",
	["opt_group_data_entry"] = "指引資料：",
	["opt_group_data_entry_desc"] = "在此貼上新指引（請記得將步驟包裹在：|nguide 指引標題|nsteps...|nsteps...|nend\n）；注意貼上並解析較大指引（>30kB）可能需要幾秒鐘。",

	['opt_windowlocked'] = "鎖定視窗",
	['opt_windowlocked_desc'] = "鎖定視窗，使其不再回應滑鼠交互。\n僅按鈕仍可使用。",
	['opt_hideborder'] = "自動隱藏邊框",
	['opt_hideborder_desc'] = "當滑鼠離開視窗時自動隱藏視窗邊框和按鈕。\n將滑鼠懸停在視窗標題片刻可再次顯示。",

	['opt_skin'] = "視窗外觀顏色",
	['opt_skin_desc'] = "選擇視窗裝飾顏色以匹配你的介面。",
	['opt_skin_violet'] = "|cffee55ff紫色",
	['opt_skin_green'] = "|cff88ff88綠色",
	['opt_skin_blue'] = "|cff99aaff藍色",
	['opt_skin_orange'] = "|cffffbb00橘色",

	['opt_backopacity'] = "背景透明度",
	['opt_backopacity_desc'] = "視窗背景透明度。",

	["report_title"] = "按 Ctrl+C 複製此報告。|n然後將其傳送給 |cffffffff%s|r 的作者，|n地址：|cffffffff%s|r。",
	["report_notitle"] = "|cffff8888（未命名指引？）|r",
	["report_noauthor"] = "|cffff8888（無可用地址）|r",

	["opt_mapbutton"] = "顯示小地圖按鈕",
	["opt_mapbutton_desc"] = "在小地圖旁顯示 Zygor Guides Viewer 按鈕",

	["minimap_tooltip"] = "|cffeedd99左鍵|r 切換指引視窗|n|cffeedd99右鍵|r 開啟設定|n",

	["waypointaddon_set"] = "已選擇路徑點插件：%s",
	["waypointaddon_connecting"] = "正在連接路徑點插件：%s",
	["waypointaddon_connected"] = "已成功連接到 %s。",
	["waypointaddon_fail"] = "連接 %s 失敗。",
	['waypoint_step'] = "步驟 %s",

	["checkmap"] = "請查看地圖。",

	["initialized"] = "初始化完成。",

	["miniframe_notloaded"] = "未載入任何升級指引。|n|n請前往 http://zygorguides.com 購買 Zygor 的 1-80 升級指引，或載入第三方指引。|n|n如果你確定已經安裝了指引，請聯絡其作者獲取安裝排錯協助。",
	["miniframe_notselected"] = "當前未選擇任何指引。\n請點擊上方閃爍按鈕以選擇一個指引。",
	["miniframe_loading"] = "正在載入指引：%d%%",

	['frame_locked'] = "視窗已鎖定",
	['frame_unlock'] = "|cffeedd99左鍵|r 解鎖",
	['frame_unlocked'] = "視窗未鎖定",
	['frame_lock'] = "|cffeedd99左鍵|r 鎖定",
	['frame_settings'] = "設定",
	['frame_settings1'] = "|cffeedd99左鍵|r 開啟選單",
	['frame_settings2'] = "|cffeedd99右鍵|r 開啟選項",
	['frame_minimized'] = "顯示 |cffffffff%d|r 個步驟",
	['frame_maximized'] = "顯示全部步驟",
	['frame_minimize'] = "|cffeedd99左鍵|r 僅顯示 |cffffffff%d|r 個",
	['frame_minright'] = "|cffeedd99右鍵|r 設定顯示步驟數",
	['frame_maximize'] = "|cffeedd99左鍵|r 顯示全部",
	['frame_stepnav_prev'] = "上一步",
	['frame_stepnav_prev_click'] = "|cffeedd99左鍵|r：後退",
	['frame_stepnav_prev_right'] = "|cffeedd99右鍵|r：後退",
	['frame_stepnav_next'] = "下一步",
	['frame_stepnav_next_click'] = "|cffeedd99左鍵|r：前進",
	['frame_stepnav_next_right'] = "|cffeedd99右鍵|r：快速前進",
	['frame_section'] = "當前指引",
	['frame_section_click'] = "|cffeedd99點擊|r 選擇",

	['tooltip_tip'] = "|cff99ff00%s|r",
	['tooltip_waypoint'] = "|cffeedd99點擊|r|cff00ff00 設定路徑點：|cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "位置：|cffffaa00%s|r",

	["message_errorloading_full"] = "載入指引 |cffaaffaa%s|r 時發生 |cffff4444錯誤|r\n第 %d 行：%s\n錯誤：%s",
	["message_errorloading_brief"] = "載入指引 |cffaaffaa%s|r 時發生 |cffff4444錯誤|r",
	["message_loadedguide"] = "已啟用指引：|cffaaffaa%s|r",
	["message_missingguide"] = "缺少指引：|cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer（未載入指引）",

	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaa等級：|cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "“%s”",
	["questtitle_part"] = "“%s”（第 %s 部分）",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "將爐石地點設定為 %s",
	["stepgoal_flightpath"] = "獲取 %s 飛行點",

	["stepgoal_accept"] = "接受 %s",
	["stepgoal_turn in"] = "交付 %s",
	["stepgoal_talk to"] = "與 %s 對話",
	["stepgoal_kill"] = "擊殺 %s",
	["stepgoal_kill #"] = "擊殺 %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "獲得 %s",
	["stepgoal_get #"] = "獲得 %s %s",
	["stepgoal_ding"] = "你現在應為 %s 級。|n    若不是，請稍微刷怪直到達到該等級。",
	["stepgoal_go to"] = "前往 %s",
	["stepgoal_also at"] = "也在 %s",
	["stepgoal_hearth to"] = "爐石返回 %s",
	["stepgoal_collect"] = "收集 %s",
	["stepgoal_collect #"] = "收集 %s %s",
	["stepgoal_buy"] = "購買 %s %s",
	["stepgoal_fpath"] = "獲取 %s 飛行點",
	["stepgoal_use"] = "使用 %s",
	["stepgoal_home"] = "將 %s 設為你的爐石地點",
	["stepgoal_petaction"] = "使用寵物技能 %s",
	["stepgoal_havebuff"] = "獲得增益/減益“%s”",
	["stepgoal_nobuff"] = "失去增益/減益“%s”",
	["stepgoal_invehicle"] = "進入載具",
	["stepgoal_outvehicle"] = "離開載具",
	["stepgoal_equipped"] = "裝備 %s",
	["stepgoal_at_suff"] = "（%s）",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	["completion_done"] = "(完成)",
	["completion_rep"] = "(%s)",

	["step_req"] = "此步驟僅對以下條件有效：%s",

	["map_highlight"] = "高亮顯示",

	["stepreq"] = "步驟職業/種族要求：",
	["stepreqor"] = " 或 ",

	["opt_do_searchforgoal"] = "尋找可完成目標",
	["searching_for_goal_success"] = "已找到一個可完成目標：%s。它可能是你在此指引中的合適起點。",
	["searching_for_goal_failed"] = "未找到可完成目標。請嘗試其他指引或章節、先接一些任務，或從章節開頭再次搜尋（搜尋只會向前進行）。",


	["going"] = "%d%% ?? %s",
	["opt_stepnumber"] = "??????",
	["opt_stepnumber_desc"] = "???????????????\n??????????",
	["opt_hidestepborders"] = "????",
	["opt_hidestepborders_desc"] = "????????????",
	["opt_stepbackopacity"] = "?????",
	["opt_stepbackopacity_desc"] = "??????????\n??????????????????",
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
	["opt_trackchains_desc"] = "????????????????????????\n\n???????????????????????????????????????????????",
	["opt_guidesinhistory"] = "??????",
	["opt_guidesinhistory_desc"] = "?????????????",
	["opt_skin_remaster"] = "|cffc7d9ffRemaster????",
	["opt_group_progress"] = "????",
	["opt_group_progress_desc"] = "???????????????????????????????",
	["opt_levelsahead"] = "??????",
	["opt_levelsahead_desc"] = "?????????????????\n?? 0 ????????????????????????\n?? 1 ?????????????????????",
	["opt_showobsolete"] = "??????",
	["opt_showobsolete_desc"] = "????????????\n??????????????????",
	["opt_skipobsolete"] = "??????",
	["opt_skipobsolete_desc"] = "?????????",
	["opt_skipauxsteps"] = "??????",
	["opt_skipauxsteps_desc"] = "???????????????????????????\n????????????????????",
	["opt_skipflightsteps"] = "???????",
	["opt_skipflightsteps_desc"] = "??????????????????????????????\n\n????????????????????",
	["opt_skipimpossible"] = "????????",
	["opt_skipimpossible_desc"] = "?????????????????????????????",
	["opt_group_progress_bottomdesc"] = "????????????????????????????????????????????????????????????\n\n??????????????????????????????????????????????????????????????????\n\n???????????????????????????????????????????????????????????",
	["opt_group_mapinternal"] = "?????",
	["opt_arrowmeters"] = "????",
	["opt_arrowmeters_desc"] = "??????????????",
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

	["binding_togglewindow"] = "顯示指引視窗",
	["binding_prev"] = "上一步",
	["binding_next"] = "下一步",
	["menu_last"] = "最近使用的指引：",
	["menu_last_entry"] = "%s |cffaaaaaa步驟|r %d",
} end)

local plurals = {
}

ZygorGuidesViewer_L("Specials", "zhTW", function() return {
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

ZygorGuidesViewer_L("G_string", "zhTW", function() return {
} end)
