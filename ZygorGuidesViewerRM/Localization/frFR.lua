if GetLocale()~="frFR" then return end

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



ZygorGuidesViewer_L("Main", "frFR", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Zygor Guides Viewer",
	["desc"] = "Parametres principaux de Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "%d guides charges.",

	["opt_guide"] = "Selectionnez un guide :",
	["opt_guide_steps"] = "Etapes : %d",
	["opt_guide_author"] = "Auteur : %s",
	["opt_guide_next"] = "Suivant dans la serie : %s",

	["opt_report"] = "Creer un rapport de bug",
	["opt_report_desc"] = "Cree un rapport de bug avec les details de l'etape actuellement affichee. Copiez/collez-le puis envoyez-le aux auteurs du guide.",

	["opt_visible"] = "Afficher la fenetre Zygor Guides Viewer",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "Masquer les guides en combat",
	["opt_hideincombat_desc"] = "Masquer toutes les fenetres de guide pendant le combat si l'ecran devient trop charge.",
	
	--["opt_group_main"] = "Main window settings",
	["opt_opacitymain"] = "Opacite",
	["opt_opacitymain_desc"] = "Opacite de la fenetre principale.",
	["opt_framescale"] = "Echelle",
	["opt_framescale_desc"] = "Redimensionnez la fenetre selon vos preferences.",
	["opt_fontsize"] = "Taille du texte",
	["opt_fontsize_desc"] = "Definit votre taille de texte preferee. L'echelle de la fenetre affecte aussi cette valeur.",
	["opt_fontsecsize"] = "Taille du texte secondaire",
	["opt_fontsecsize_desc"] = "Definit la taille du texte secondaire utilise pour les descriptions et notes.",
	["opt_backcolor"] = "Couleur d'arriere-plan",
	["opt_backcolor_desc"] = "Couleur d'arriere-plan de la fenetre.",

	["opt_group_window"] = "Fonctions de la fenetre",
	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Redimensionner vers le haut",
	["opt_miniresizeup_desc"] = "Inverse la fenetre pour qu'elle s'etende vers le haut au lieu du bas. Utile si elle est placee en bas de l'ecran.",
	["opt_opacitymini"] = "Opacite de l'arriere-plan",
	["opt_opacitymini_desc"] = "Opacite de l'arriere-plan de la fenetre d'etapes.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_showcountsteps"] = "Afficher les etapes :",
	["opt_showcountsteps_desc"] = "Nombre d'etapes a afficher.\n|cffffffaaTous|r affiche toutes les etapes dans une liste defilante.\n|cffffffaa1-5|r affiche l'etape actuelle en haut et redimensionne automatiquement la fenetre pour afficher seulement quelques etapes suivantes.",
	["opt_showcountsteps_all"] = "Tous",

	["opt_group_map"] = "Points de passage",
	["opt_group_map_desc"] = "Ces parametres definissent comment Zygor Guides Viewer interagit avec les addons de carte.",
	["opt_group_map_waypointing"] = "Addon de points de passage",
	["opt_group_map_waypointing_desc"] = "Selectionnez l'addon qui gerera les points de passage pour Zygor Guides Viewer.",
	["opt_group_addons_builtin"] = "Points de passage integres",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "aucun",
	["opt_debug"] = "Debogage",
	["opt_debug_desc"] = "Afficher les informations de debogage.",
	["opt_debugging"] = "Debogage",
	["opt_debugging_desc"] = "Options de debogage.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	["opt_autoskip"] = "Avancer automatiquement",
	["opt_autoskip_desc"] = "Passe automatiquement a l'etape suivante quand toutes les conditions sont remplies. Certaines etapes peuvent encore necessiter un passage manuel si leurs conditions sont trop complexes.",

	["opt_goalicons"] = "Afficher les icones d'etape",
	["opt_goalicons_desc"] = "Afficher des icones indiquant l'etat d'avancement.",
	["opt_goalcolorize"] = "Colorer les lignes completes",
	["opt_goalcolorize_desc"] = "Colore entierement en vert les lignes d'etape completees.",
	["opt_goalbackprogress"] = "Appliquer des couleurs selon le pourcentage",
	["opt_goalbackprogress_desc"] = "Affiche la progression partielle avec des couleurs intermediaires entre incomplet et complet.|nSi desactive, les objectifs utilisent uniquement les couleurs 'incomplet' ou 'complet'.",

	["opt_group_step"] = "Objectifs de l'etape",

	["opt_goalbackcolor_desc"] = "Couleurs de completion :",
	["opt_goalbackgrounds"] = "Colorer les arriere-plans",
	["opt_goalbackgrounds_desc"] = "Colorer l'arriere-plan des lignes d'etape selon l'etat d'avancement.",
	["opt_goalbackcomplete"] = "Complet",
	["opt_goalbackcomplete_desc"] = "Utiliser cette couleur pour les objectifs completes.",
	["opt_goalbackincomplete"] = "Incomplet",
	["opt_goalbackincomplete_desc"] = "Utiliser cette couleur pour les objectifs incomplets.",
	["opt_goalbackimpossible"] = "Impossible",
	["opt_goalbackimpossible_desc"] = "Utiliser cette couleur pour les objectifs impossibles a completer pour le moment.",

	['opt_tooltipsbelow'] = "Afficher les informations supplementaires en ligne",
	['opt_tooltipsbelow_desc'] = "Les informations supplementaires de certaines lignes d'etape peuvent etre affichees en ligne ou dans des info-bulles au survol.",

	["opt_flash_desc"] = "Notification de progression :",
	["opt_goalcompletionflash"] = "Faire clignoter l'objectif a la completion",
	["opt_goalcompletionflash_desc"] = "Utiliser un effet visuel de clignotement quand un objectif est complete.",
	["opt_goalupdateflash"] = "Faire clignoter l'objectif en progression",
	["opt_goalupdateflash_desc"] = "Utiliser un effet visuel de clignotement quand un objectif progresse.",
	["opt_flashborder"] = "Faire clignoter la fenetre a la fin d'une etape",
	["opt_flashborder_desc"] = "Faire clignoter toute la fenetre a chaque etape completee.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

	["opt_group_display"] = "Affichage",
	["opt_group_display_desc"] = "Reglez la facon dont les guides doivent etre affiches.",

	["opt_group_data"] = "Guides stockes",
	["opt_group_data_desc"] = "Zygor Guides Viewer peut stocker en interne des guides commerciaux qui ne peuvent pas etre distribues comme addons separes.",
	["opt_group_data_guide"] = "Guides stockes en interne :",
	["opt_group_data_guide_desc"] = "Selectionnez un guide stocke dans cette liste pour le modifier ou le supprimer. Cette liste n'affiche PAS les guides charges comme addons separes.",
	["opt_group_data_del"] = "Supprimer le guide",
	["opt_group_data_del_desc"] = "Supprime le guide selectionne du stockage interne.",
	["opt_group_data_edit"] = "Modifier le guide",
	["opt_group_data_edit_desc"] = "Charge le guide selectionne dans la fenetre d'edition ci-dessous pour le corriger.",
	["opt_group_data_entry"] = "Donnees du guide :",
	["opt_group_data_entry_desc"] = "Collez un nouveau guide ici (pensez a entourer ses etapes par :|nguide Title Of Guide|nsteps...|nsteps...|nend\n); le collage et l'analyse d'un gros guide (>30kB) peuvent prendre quelques secondes.",

	['opt_windowlocked'] = "Verrouiller la fenetre",
	['opt_windowlocked_desc'] = "Verrouille la fenetre pour la rendre non interactive a la souris.\nSeuls les boutons restent actifs.",
	['opt_hideborder'] = "Masquage automatique de la bordure",
	['opt_hideborder_desc'] = "Masque automatiquement la bordure et les boutons de la fenetre lorsque la souris est ailleurs.\nSurvolez un instant le titre de la fenetre pour les faire reapparaitre.",

	['opt_skin'] = "Couleur du theme de fenetre",
	['opt_skin_desc'] = "Choisissez une couleur pour les decorations de fenetre selon votre interface.",
	['opt_skin_violet'] = "|cffee55ffViolet",
	['opt_skin_green'] = "|cff88ff88Vert",
	['opt_skin_blue'] = "|cff99aaffBleu",
	['opt_skin_orange'] = "|cffffbb00Orange",

	['opt_backopacity'] = "Opacite de l'arriere-plan",
	['opt_backopacity_desc'] = "Opacite de l'arriere-plan de la fenetre.",



	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Appuyez sur Ctrl+C pour copier ce rapport.|nEnsuite, envoyez-le a l'auteur de |cffffffff%s|r,|na |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(guide sans nom ?)|r",
	["report_noauthor"] = "|cffff8888(adresse indisponible)|r",


	["opt_mapbutton"] = "Afficher le bouton de minicarte",
	["opt_mapbutton_desc"] = "Afficher le bouton Zygor Guides Viewer a cote de votre minicarte",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Clic|r pour afficher/masquer la fenetre du guide|n"..COLOR_TIP_MOUSE.."Clic droit|r pour configurer|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"


	["waypointaddon_set"] = "Addon de points de passage selectionne : %s",
	["waypointaddon_connecting"] = "Connexion a l'addon de points de passage : %s",
	["waypointaddon_connected"] = "Connexion reussie a %s.",
	["waypointaddon_fail"] = "Echec de connexion a %s.",
	['waypoint_step'] = "Etape %s",

	["checkmap"] = "Verifiez votre carte.",

	["initialized"] = 'Initialise.',

	["miniframe_notloaded"] = "Aucun guide de progression n'est charge.|n|nRendez-vous sur http://zygorguides.com pour acheter les guides Zygor 1-80, ou chargez des guides tiers.|n|nSi vous etes sur d'avoir installe des guides, contactez leurs auteurs pour l'aide a l'installation.",
	["miniframe_notselected"] = "Aucun guide n'est actuellement selectionne.\nVeuillez cliquer sur le bouton clignotant ci-dessus pour choisir un guide.",

	['frame_locked'] = "Fenetre verrouillee",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Clic|r pour deverrouiller",
	['frame_unlocked'] = "Fenetre deverrouillee",
	['frame_lock'] = COLOR_TIP_MOUSE.."Clic|r pour verrouiller",
	['frame_settings'] = "Parametres",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Clic|r pour regler les options de base",
	['frame_settings2'] = COLOR_TIP_MOUSE.."Clic droit|r pour ouvrir la configuration",
	['frame_minimized'] = "Affiche |cffffffff%d|r etape(s)",
	['frame_maximized'] = "Affiche toutes les etapes",
	['frame_minimize'] = COLOR_TIP_MOUSE.."Clic|r pour n'afficher que |cffffffff%d|r",
	['frame_maximize'] = COLOR_TIP_MOUSE.."Clic|r pour tout afficher",
	['frame_stepnav_prev'] = "Etape precedente",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Clic|r pour revenir",
	['frame_stepnav_next'] = "Etape suivante",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Clic|r pour passer",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Clic droit|r pour avancer rapidement",
	['frame_section'] = "Guide actuel",
	['frame_section_click'] = COLOR_TIP_MOUSE.."Clic|r pour selectionner",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."Clic|r"..COLOR_TIP.." pour definir le point de passage : |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Position : |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Erreur|r lors du chargement du guide |cffaaffaa%s|r\nligne %d : %s\nerreur : %s",
	["message_errorloading_brief"] = "|cffff4444Erreur|r lors du chargement du guide |cffaaffaa%s|r",
	["message_loadedguide"] = "Guide active : |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Guide manquant|r : |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (aucun guide chargé)",


	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaNiveau : |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (partie %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Définissez votre foyer à %s",
	["stepgoal_flightpath"] = "Prenez le trajet aérien %s",

	["stepgoal_accept"] = "Acceptez %s",
	["stepgoal_turn in"] = "Rendez %s",
	["stepgoal_talk to"] = "Parlez à %s",
	["stepgoal_kill"] = "Tuez %s",
	["stepgoal_kill #"] = "Tuez %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Obtenez %s",
	["stepgoal_get #"] = "Obtenez %s %s",
	["stepgoal_ding"] = "Vous devriez maintenant être niveau %s.|n    Sinon, tuez quelques monstres jusqu'à l'atteindre.",
	["stepgoal_go to"] = "Allez au %s",
	["stepgoal_also at"] = "Aussi à %s",
	["stepgoal_hearth to"] = "Utilisez votre pierre de foyer vers %s",
	["stepgoal_collect"] = "Collectez %s",
	["stepgoal_collect #"] = "Collectez %s %s",
	["stepgoal_buy"] = "Achetez %s %s",
	["stepgoal_fpath"] = "Prenez le trajet aérien %s",
	["stepgoal_use"] = "Utilisez %s",
	["stepgoal_home"] = "Faites de %s votre foyer",
	["stepgoal_petaction"] = "Utilisez l'action de familier %s",
	["stepgoal_havebuff"] = "Obtenez l'effet/buff '%s'",
	["stepgoal_nobuff"] = "Perdez l'effet/buff '%s'",
	["stepgoal_invehicle"] = "Montez dans le véhicule",
	["stepgoal_outvehicle"] = "Sortez du véhicule",
	["stepgoal_equipped"] = "Équipez %s",
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

	["step_req"] = "Étape valable uniquement pour : %s",


	["map_highlight"] = "Surligner",

	["stepreq"] = "Exigence de classe/race pour l'étape : ",
	["stepreqor"] = " ou ",

	["opt_do_searchforgoal"] = "Trouver un objectif réalisable",
	["searching_for_goal_success"] = "Un objectif réalisable a été trouvé pour vous : %s. Cela peut être un bon point de départ dans le guide.",
	["searching_for_goal_failed"] = "Aucun objectif réalisable n'a été trouvé. Essayez un autre guide ou une autre section, prenez quelques quêtes, ou relancez la recherche depuis le début de la section (la recherche se fait uniquement vers l'avant).",

	["binding_togglewindow"] = "Afficher la fenêtre du guide",

} end)



local plurals = {
}

ZygorGuidesViewer_L("Specials", "frFR", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)



-- Add lines for any translations needed for:


-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "frFR", function() return {
--	["blabla"] = TRUE,
} end)

