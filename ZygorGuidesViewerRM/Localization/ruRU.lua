if GetLocale()~="ruRU" then return end

-- These are the main viewer's lines.

local COLOR_TIP_MOUSE = "|cffeedd99"
local COLOR_TIP_HINT = "|cff99ff00"
local COLOR_TIP = "|cff00ff00"

local COLOR_GOAL_LOC = "|cffffee77"
local COLOR_GOAL_COUNT = "|cffffffcc"
local COLOR_GOAL_ITEM = "|cffaaeeff"
local COLOR_GOAL_QUEST = "|cffbb99ff"
local COLOR_GOAL_NPC = "|cffaaffaa"
local COLOR_GOAL_MONSTER = "|cffffaaaa"
local COLOR_GOAL_GOAL = "|cffffcccc"



ZygorGuidesViewer_L("Main", "ruRU", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Prosmotrshchik gaydov Zygor",
	["desc"] = "Основные настройки Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "Загружено %d гайдов.",

	["opt_guide"] = "Выберите гайд:",
	["opt_guide_steps"] = "Шагов: %d",
	["opt_guide_author"] = "Автор: %s",
	["opt_guide_next"] = "Следующий в серии: %s",

	["opt_report"] = "Сообщить об ошибке в шаге",
	["opt_report_desc"] = "Создать отчет об ошибке с данными текущего шага. Скопируйте и отправьте авторам гайда.",

	["opt_visible"] = "Показывать окно Zygor Guides Viewer",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "Скрывать гайды в бою",
	["opt_hideincombat_desc"] = "Скрывать все окна гайда во время боя, если на экране мало места.",
	
	--["opt_group_main"] = "Main window settings",
	["opt_opacitymain"] = "Прозрачность",
	["opt_opacitymain_desc"] = "Прозрачность главного окна.",
	["opt_framescale"] = "Масштаб",
	["opt_framescale_desc"] = "Изменение размера окна под ваши предпочтения.",
	["opt_fontsize"] = "Масштаб текста",
	["opt_fontsize_desc"] = "Предпочитаемый размер текста. На него также влияет масштаб окна.",
	["opt_fontsecsize"] = "Масштаб вторичного текста",
	["opt_fontsecsize_desc"] = "Размер дополнительного текста для описаний и заметок.",
	["opt_backcolor"] = "Цвет фона",
	["opt_backcolor_desc"] = "Цвет фона окна.",

	["opt_group_window"] = "Параметры окна",
	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Расширять вверх",
	["opt_miniresizeup_desc"] = "Переворачивает направление расширения окна вверх, а не вниз. Удобно, если окно находится внизу экрана.",
	["opt_opacitymini"] = "Прозрачность фона",
	["opt_opacitymini_desc"] = "Прозрачность фона окна шагов.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_showcountsteps"] = "Показывать шаги:",
	["opt_showcountsteps_desc"] = "Количество отображаемых шагов.\n|cffffffaaВсе|r показывает все шаги в прокручиваемом списке.\n|cffffffaa1-5|r показывает текущий шаг сверху и автоматически меняет размер окна для нескольких следующих шагов.",
	["opt_showcountsteps_all"] = "Все",

	["opt_group_map"] = "Маршрутные точки",
	["opt_group_map_desc"] = "Эти настройки определяют, как Zygor Guides Viewer работает с картографическими аддонами.",
	["opt_group_map_waypointing"] = "Аддон маршрутных точек",
	["opt_group_map_waypointing_desc"] = "Выберите аддон, который будет обрабатывать маршрутные точки для Zygor Guides Viewer.",
	['opt_group_map_hidearrowwithguide'] = "Скрывать стрелку при скрытии окна",
	['opt_group_map_hidearrowwithguide_desc'] = "Если включено, стрелка будет скрываться вместе с окном гайда.\nЕсли нужно, чтобы стрелка оставалась видимой, отключите эту опцию.",
	["opt_group_addons_internal"] = "Встроенные маршрутные точки",
	["opt_group_addons_builtin"] = "Встроенные маршрутные точки",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_carbonite"] = "Carbonite",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "нет",
	["opt_debug"] = "Отладка",
	["opt_debug_desc"] = "Показывать отладочную информацию.",
	["opt_debugging"] = "Отладка",
	["opt_debugging_desc"] = "Параметры отладки.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	["opt_autoskip"] = "Автоматический переход",
	["opt_autoskip_desc"] = "Автоматически переходить к следующему шагу при выполнении всех условий. Некоторые шаги с очень сложными условиями все еще могут требовать ручного пропуска.",

	["opt_goalicons"] = "Показывать иконки шагов",
	["opt_goalicons_desc"] = "Показывать иконки, отражающие статус выполнения.",
	["opt_goalcolorize"] = "Окрашивать выполненные строки",
	["opt_goalcolorize_desc"] = "Полностью окрашивать выполненные строки шага в зеленый.",
	["opt_goalbackprogress"] = "Окраска по проценту выполнения",
	["opt_goalbackprogress_desc"] = "Показывать частичное выполнение промежуточными цветами между невыполненным и выполненным.|nЕсли выключено, цели отображаются только цветами 'невыполнено' или 'выполнено'.",

	["opt_group_step"] = "Цели шага",

	["opt_goalbackcolor_desc"] = "Цвета выполнения:",
	["opt_progressbackcolor_desc"] = "Цвета шагов:",
	["opt_goalbackaux"] = "Путешествие",
	["opt_goalbackaux_desc"] = "Этот цвет используется для шагов перемещения.",
	["opt_goalbackobsolete"] = "Устаревшее",
	["opt_goalbackobsolete_desc"] = "Этот цвет используется для устаревших целей или шагов.",
	["opt_goalbackprogressing"] = "В процессе",
	["opt_goalbackprogressing_desc"] = "Этот цвет обозначает цели примерно на 50% выполнения.",
	["opt_goalbackgrounds"] = "Окрашивать фон",
	["opt_goalbackgrounds_desc"] = "Окрашивать фон строк шага для отображения статуса выполнения.",
	["opt_goalbackcomplete"] = "Выполнено",
	["opt_goalbackcomplete_desc"] = "Цвет выполненных целей.",
	["opt_goalbackincomplete"] = "Не выполнено",
	["opt_goalbackincomplete_desc"] = "Цвет невыполненных целей.",
	["opt_goalbackimpossible"] = "Невозможно",
	["opt_goalbackimpossible_desc"] = "Цвет целей, которые сейчас невозможно выполнить.",

	['opt_tooltipsbelow'] = "Показывать доп. информацию в строке",
	['opt_tooltipsbelow_desc'] = "Дополнительную информацию о некоторых строках шага можно показывать в строке или во всплывающей подсказке при наведении.",

	["opt_flash_desc"] = "Оповещение о прогрессе:",
	["opt_goalcompletionflash"] = "Подсветка цели при выполнении",
	["opt_goalcompletionflash_desc"] = "Визуальная вспышка при выполнении отдельной цели.",
	["opt_goalupdateflash"] = "Подсветка цели при прогрессе",
	["opt_goalupdateflash_desc"] = "Визуальная вспышка при прогрессе отдельной цели.",
	["opt_flashborder"] = "Подсветка окна при завершении шага",
	["opt_flashborder_desc"] = "Подсвечивать все окно при завершении шага.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

	["opt_group_display"] = "Отображение",
	["opt_group_display_desc"] = "Настройка отображения гайдов.",

	["opt_group_data"] = "Встроенные гайды",
	["opt_group_data_desc"] = "Zygor Guides Viewer может хранить коммерческие гайды во внутреннем хранилище, которые нельзя распространять как отдельные аддоны.",
	["opt_group_data_guide"] = "Гайды во внутреннем хранилище:",
	["opt_group_data_guide_desc"] = "Выберите гайд из списка для редактирования или удаления. Здесь НЕ показываются гайды, загруженные отдельными аддонами.",
	["opt_group_data_del"] = "Удалить гайд",
	["opt_group_data_del_desc"] = "Удалить выбранный гайд из внутреннего хранилища.",
	["opt_group_data_edit"] = "Редактировать гайд",
	["opt_group_data_edit_desc"] = "Загрузить выбранный гайд в окно редактора ниже.",
	["opt_group_data_entry"] = "Данные гайда:",
	["opt_group_data_entry_desc"] = "Вставьте новый гайд сюда (оберните шаги в:|nguide Title Of Guide|nsteps...|nsteps...|nend\n); вставка и разбор большого гайда (>30kB) могут занять несколько секунд.",

	['opt_windowlocked'] = "Закрепить окно",
	['opt_windowlocked_desc'] = "Закрепить окно, отключив взаимодействие мышью.\nАктивными останутся только кнопки.",
	['opt_hideborder'] = "Автоскрытие рамки",
	['opt_hideborder_desc'] = "Автоматически скрывать рамку и кнопки окна, когда курсор уходит.\nНаведите курсор на заголовок окна, чтобы снова показать их.",

	['opt_skin'] = "Цвет оформления окна",
	['opt_skin_desc'] = "Выберите цвет оформления окна под ваш интерфейс.",
	['opt_skin_violet'] = "|cffee55ffФиолетовый",
	['opt_skin_green'] = "|cff88ff88Зеленый",
	['opt_skin_blue'] = "|cff99aaffСиний",
	['opt_skin_orange'] = "|cffffbb00Оранжевый",

	['opt_backopacity'] = "Прозрачность фона",
	['opt_backopacity_desc'] = "Прозрачность фона окна.",



	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Нажмите Ctrl+C, чтобы скопировать отчет.|nЗатем отправьте его автору |cffffffff%s|r|nна адрес |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(гайд без названия?)|r",
	["report_noauthor"] = "|cffff8888(адрес недоступен)|r",


	["opt_mapbutton"] = "Показывать кнопку у миникарты",
	["opt_mapbutton_desc"] = "Показывать кнопку Zygor Guides Viewer рядом с миникартой",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."ЛКМ|r: показать/скрыть окно гайда|n"..COLOR_TIP_MOUSE.."ПКМ|r: настройки|n",


	["waypointaddon_set"] = "Выбран аддон маршрутных точек: %s",
	["waypointaddon_detecting"] = "Попытка автоматически определить аддон маршрутных точек...",
	["waypointaddon_connecting"] = "Подключение к аддону маршрутных точек: %s",
	["waypointaddon_connected"] = "Успешное подключение к %s.",
	["waypointaddon_fail"] = "Не удалось подключиться к %s.",
	["waypointaddon_disconnected"] = "Отключено от |cffddeeff%s|r.",
	['waypoint_step'] = "Шаг %s",

	["checkmap"] = "Проверьте карту.",

	["initialized"] = 'Инициализация завершена.',

	["miniframe_notloaded"] = "Гайды для прокачки не загружены.|n|nПерейдите на http://zygorguides.com, чтобы приобрести гайды Zygor 1-80, или загрузите сторонние гайды.|n|nЕсли вы уверены, что установили гайды, обратитесь к их авторам за помощью по установке.",
	["miniframe_notselected"] = "Сейчас гайд не выбран.\nНажмите мигающую кнопку выше, чтобы выбрать гайд.",
	["miniframe_loading"] = "Загрузка гайдов: %d%%",

	['frame_locked'] = "Окно закреплено",
	['frame_unlock'] = COLOR_TIP_MOUSE.."ЛКМ|r: открепить",
	['frame_unlocked'] = "Окно не закреплено",
	['frame_lock'] = COLOR_TIP_MOUSE.."ЛКМ|r: закрепить",
	['frame_settings'] = "Настройки",
	['frame_settings1'] = COLOR_TIP_MOUSE.."ЛКМ|r: базовые настройки",
	['frame_settings2'] = COLOR_TIP_MOUSE.."ПКМ|r: полная конфигурация",
	['frame_minimized'] = "Показывается шагов: |cffffffff%d|r",
	['frame_maximized'] = "Показываются все шаги",
	['frame_minimize'] = COLOR_TIP_MOUSE.."ЛКМ|r: показывать только |cffffffff%d|r",
	['frame_minright'] = COLOR_TIP_MOUSE.."ПКМ|r: выбрать количество шагов",
	['frame_maximize'] = COLOR_TIP_MOUSE.."ЛКМ|r: показать все",
	['frame_stepnav_prev'] = "Предыдущий шаг",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."ЛКМ|r: назад",
	['frame_stepnav_prev_right'] = COLOR_TIP_MOUSE.."ПКМ|r: перемотка назад",
	['frame_stepnav_next'] = "Следующий шаг",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."ЛКМ|r: пропустить",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."ПКМ|r: перемотка вперед",
	['frame_section'] = "Текущий гайд",
	['frame_section_click'] = COLOR_TIP_MOUSE.."ЛКМ|r: выбрать",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."ЛКМ|r"..COLOR_TIP.." установить точку: |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Местоположение: |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Ошибка|r загрузки гайда |cffaaffaa%s|r\nстрока %d: %s\nошибка: %s",
	["message_errorloading_brief"] = "|cffff4444Ошибка|r загрузки гайда |cffaaffaa%s|r",
	["message_loadedguide"] = "Активирован гайд: |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Отсутствует|r гайд: |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (гайд не выбран)",


	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaУровень: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (часть %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Сделайте %s местом возвращения",
	["stepgoal_flightpath"] = "Откройте маршрут полета: %s",

	["stepgoal_accept"] = "Примите %s",
	["stepgoal_turn in"] = "Отдайте %s",
	["stepgoal_talk to"] = "Поговорите с %s",
	["stepgoal_kill"] = "Убийте %s",
	["stepgoal_kill #"] = "Убийте %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Получите %s",
	["stepgoal_get #"] = "Получите %s %s",
	["stepgoal_ding"] = "Сейчас у вас должен быть %s уровень.|n     Если нет, добейте немного мобов до нужного уровня.",
	["stepgoal_go to"] = "Идите к %s",
	["stepgoal_also at"] = "Тоже на %s",
	["stepgoal_hearth to"] = "Используйте камень возвращения в %s",
	["stepgoal_collect"] = "Соберите %s",
	["stepgoal_collect #"] = "Соберите %s %s",
	["stepgoal_buy"] = "Купите %s %s",
	["stepgoal_fpath"] = "Откройте маршрут полета: %s",
	["stepgoal_use"] = "Используйте %s",
	["stepgoal_home"] = "Сделайте %s местом возвращения",
	["stepgoal_petaction"] = "Используйте способность питомца %s",
	["stepgoal_havebuff"] = "Получите эффект/дебафф '%s'",
	["stepgoal_nobuff"] = "Снимите эффект/дебафф '%s'",
	["stepgoal_rep"] = "Получите %s у %s",
	["stepgoal_achieve"] = "Получите достижение '%s'",
	["stepgoal_achievesub"] = "Выполните '%s' для достижения '%s'",
	["stepgoal_skill"] = "Изучите %s до уровня %s",
	["stepgoal_skillmax"] = "Повысьте %s до максимального уровня %s",
	["stepgoal_learn"] = "Научитесь создавать %s",
	["stepgoal_invehicle"] = "Сядьте в транспорт",
	["stepgoal_outvehicle"] = "Покиньте транспорт",
	["stepgoal_equipped"] = "Экипируйте %s",
	["stepgoal_or"] = "  - или -",
	["stepgoal_at_suff"] = " (%s)",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	["completion_done"] = "(выполнено)",
	["completion_rep"] = "(%s)",
	--["completion_(done)"] = "(done)",

	['quest_part'] = " (часть %s)",

--[[
	["stepgoalshort_complete"] = "готово",
	["stepgoalshort_incomplete"] = "в процессе",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
--]]

	["step_req"] = "Шаг подходит только для: %s",


	["map_highlight"] = "Подсветить",

	["stepreq"] = "Требование класса/расы для шага: ",
	["stepreqor"] = " или ",
	["req_not"] = "не %s",

	["opt_do_searchforgoal"] = "Найти выполнимую цель",
	["searching_for_goal_success"] = "Для вас найдена выполнимая цель: %s. Это может быть хорошей точкой входа в гайд.",
	["searching_for_goal_failed"] = "Выполнимая цель не найдена. Попробуйте другой гайд или раздел, возьмите квесты или запустите поиск заново с начала раздела (поиск идет только вперед).",
	["going"] = "%d%% до %s",

	["binding_togglewindow"] = "Показать окно гайда",
	["binding_prev"] = "Предыдущий шаг",
	["binding_next"] = "Следующий шаг",
	["menu_last"] = "Последние гайды:",
	["menu_last_entry"] = "%s |cffaaaaaaшаг|r %d",


	["opt_stepnumber"] = "Pokazyvat nomera shagov",
	["opt_stepnumber_desc"] = "Pokazyvat nomera shagov i rekomenduemyy uroven dlya kazhdogo shaga.\nOtklyuchite, chtoby sekonomit mesto na ekrane.",
	["opt_hidestepborders"] = "Skryt ramki",
	["opt_hidestepborders_desc"] = "Skryvaet graficheskie ramki vokrug shagov.",
	["opt_stepbackopacity"] = "Prozrachnost fona",
	["opt_stepbackopacity_desc"] = "Prozrachnost fona okna shagov.\nCvet fona sootvetstvuet statusu vypolneniya i zatemnyaetsya.",
	["opt_resetwindow"] = "Sbrosit okno",
	["opt_resetwindow_desc"] = "Esli okno vne ekrana, eta knopka vernet ego v centr.",
	["opt_trackchains"] = "Uchityvat tsepochki kvestov",
	["opt_trackchains_desc"] = "Pometchaet shagi prinyatiya kvesta kak nedostupnye, esli predydushchiy kvest ne zavershen.\n\nBaza tsepochek vklyuchaet \"svobodnye tsepochki\", poetomu inogda prinyatie mozhet pokazatsya nedostupnym, hotya kvest vse eshche mozhno vzyat.",
	["opt_guidesinhistory"] = "Kolichestvo nedavnih gaydov",
	["opt_guidesinhistory_desc"] = "Pokazyvat stolko nedavno ispolzovannyh gaydov.",
	["opt_skin_remaster"] = "|cffc7d9ffRemaster (po umolchaniyu)",
	["opt_group_progress"] = "Dinamicheskiy progress",
	["opt_group_progress_desc"] = "Dlya optimizatsii prokachki addon mozhet dinamicheski propuskat kvesty, kotorye uzhe malo polezny na vashem urovne.",
	["opt_levelsahead"] = "Razreshit urovni vpered",
	["opt_levelsahead_desc"] = "Etot parametr opredelyaet, naskolko vy mozhete operedat gayd po urovnyu.\nPri 0 obychno propuskayutsya kvesty nizhe vashego urovnya (esli net prodolzheniya).\nPri 1 i vyshe propuskayutsya tolko kvesty, kotorye nizhe vas bolee chem na ukazannoe chislo urovney.",
	["opt_showobsolete"] = "Otzmechat ustarevshie shagi",
	["opt_showobsolete_desc"] = "Otzmechat ustarevshie shagi serym fonom.\nShag schitaetsya ustarevshim, esli ego uroven slishkom nizok dlya vas.",
	["opt_skipobsolete"] = "Propuskat ustarevshie shagi",
	["opt_skipobsolete_desc"] = "Avtomaticheski propuskat ustarevshie shagi.",
	["opt_skipauxsteps"] = "Propuskat transportnye shagi",
	["opt_skipauxsteps_desc"] = "Avtomaticheski propuskat transportnye shagi, esli posle nih idut uzhe vypolnennye ili ustarevshie shagi.\nEto predotvrashchaet situatsii, kogda vy daleko uidete, a sleduyushchiy shag uzhe byl vypolnen.",
	["opt_skipflightsteps"] = "Schitat marshruty poleta izvestnymi",
	["opt_skipflightsteps_desc"] = "Predpolagaet, chto vy sami otkryvaete marshruty poleta, i avtomaticheski pometchaet shagi polucheniya marshruta kak vypolnennye.\n\nPolezno pri prizhke v seredinu gayda, menee polezno v obychnoy igre.",
	["opt_skipimpossible"] = "Propuskat nevozmozhnye shagi",
	["opt_skipimpossible_desc"] = "Avtomaticheski propuskat nevozmozhnye shagi, chtoby ne videt tseli iz kvestov, kotorye vy spetsialno propustili.",
	["opt_group_progress_bottomdesc"] = "Dinamicheskiy progress rabotaet tak: kvesty pometchayutsya kak \"ustarevshie\", kogda vy operejaete uroven gayda bolshe, chem na znachenie vyshche. Tsepochki kvestov pometchayutsya kak ustarevshie tolko esli ustarela vsya tsepochka.\n\nDlya novyh igrokov eto pomogaet umno propuskat nizkourovnevyy kontent, ostanavlivayas tolko na poleznyh tsepochkah.\n\nDlya opytnyh igrokov eto ne daet gaydu zamedlyat vas nizkourovnevymi kvestami, esli vy kachaetes bystree, chem ozhidalos.",
	["opt_group_mapinternal"] = "Vstroennye putevye tochki",
	["opt_arrowmeters"] = "Metricheskaya sistema",
	["opt_arrowmeters_desc"] = "Ispolzovat metry i kilometry vmesto yardov i mil.",
	["opt_arrowfreeze"] = "Strelka ignoriruet kliki",
	["opt_arrowfreeze_desc"] = "Strelka ignoriruet deystviya myshi. Otklyuchite, chtoby peretaskivat ee.",
	["opt_arrowcam"] = "Strelka po kamere",
	["opt_arrowcam_desc"] = "Pokazyvat napravlenie otnositelno kamery. Esli vyklyucheno, strelka orientiruetsya po napravleniyu personazha.\n\nPrimechanie: v rezhime kamery strelka mozhet vesti sebya stranno pri click-to-move.",
	["opt_arrowcolordir"] = "Tsvet po napravleniyu",
	["opt_arrowcolordir_desc"] = "Delat gemmu strelki zelenoy, kogda ona ukazyvaet v pravilnom napravlenii.\n\nOtklyuchite, esli hotite zelenyy tolko pri priblizhenii k tseli.",
	["opt_arrowscale"] = "Masshtab strelki",
	["opt_arrowscale_desc"] = "Razmer strelki.",
	["opt_arrowfontsize"] = "Razmer teksta strelki",
	["opt_arrowfontsize_desc"] = "Razmer teksta v okne strelki.",
	["opt_minimapzoom"] = "Avto-masshtab minimapy",
	["opt_minimapzoom_desc"] = "Avtomaticheski uvelichivaet minimapu pri ustanovke tochki i vozvrashchaet predydushchiy masshtab potom.",
	["opt_foglight"] = "Pokazyvat svetovoy sled",
	["opt_foglight_desc"] = "Risuet merchayushchiy put k tseli na karte mira i minimape.",
	["opt_group_gold"] = "Gold-gayd",
	["opt_group_gold_desc"] = "Eti nastroiki upravlyayut otobrazheniem shagov farma zolota i tochkami resursov.",
	["opt_gold_detectiondist"] = "Distantsiya obnaruzheniya",
	["opt_gold_detectiondist_desc"] = "Distantsiya, na kotoroy uchityvayutsya blizhayshie tochki gold-gayda.",
	["opt_gold_reqmode"] = "Rezhim trebovaniy",
	["opt_gold_reqmode_desc"] = "Vyberite, kakie tipy tochek uchityvat.",
	["opt_gold_reqmode_all"] = "Vse",
	["opt_gold_reqmode_current"] = "Tolko tekushchiy gayd",
	["opt_gold_reqmode_future"] = "Tekushchiy + budushchie gaydy",
	["gold_missing_noguidesloaded"] = "Gold-gaydy ne zagruzheny.",
	["gold_missing_nospotsinrange"] = "Podhodyashchie tochki v radius ne naydeny.",
	["gold_header_ore"] = "Mesta s rudoy:",
	["gold_header_herb"] = "Travy:",
	["gold_header_skin"] = "Skiny:",
	["gold_header_drop"] = "Dobycha s |cffffdddd%s|r:",
	["opt_group_convenience"] = "Dopolnitelnye funktsii",
	["opt_group_convenience_desc"] = "Raznye poleznye opcii.",
	["opt_autoaccept"] = "Avto-prinyatie kvestov",
	["opt_autoaccept_desc"] = "Avtomaticheski prinimat predlozhennye kvesty.",
	["opt_autoturnin"] = "Avto-sdacha kvestov",
	["opt_autoturnin_desc"] = "Avtomaticheski sdavat vypolnennye kvesty.",
	["opt_fixblizzardautoaccept"] = "Ispravit Blizzard avto-prinyatie",
	["opt_fixblizzardautoaccept_desc"] = "Pri vklyuchennoy optsii Blizzard \"Quest auto-accept\" vse ravno otmechat shagi \"Prinyat\" i \"Prinyato\" kak vypolnennye.",
	["opt_audiocues"] = "Zvukovye signaly",
	["opt_audiocues_desc"] = "Proigryvat zvuki pri progresse shagov.",
	["opt_analyzereps"] = "Analiz reputaciy",
	["opt_analyzereps_desc"] = "Analiziruet tekushchie reputacii i pometchaet neaktualnye reputatsionnye shagi kak ustarevshie.",
	["opt_mapcoords"] = "Pokazyvat koordinaty na karte",
	["opt_mapcoords_desc"] = "Pokazyvat koordinaty igroka i kursora v oknah kart.",
	["pointer_corpselabel1"] = "Byvshiy ty",
	["pointer_corpselabel2"] = "Kto nauchilsya ubezhat...",
	["pointer_corpselabel3"] = "Vzyl slishkom mnogo na sebya, da?",
	["pointer_corpselabel4"] = "Korol vedra - syuda",
	["pointer_corpselabel5"] = "Luchshe ne dumat o tsene remonta.",
	["haman$"] = "hamans",
	["(%a)man$"] = "%1men",

} end)



local plurals = {
}

ZygorGuidesViewer_L("Specials", "ruRU", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)



-- Add lines for any translations needed for:

-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "ruRU", function() return {
--	["blabla"] = TRUE,
} end)

