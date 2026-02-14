if GetLocale()~="esES" then return end

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



ZygorGuidesViewer_L("Main", "esES", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guides Viewer|r",
	["name_plain"] = "Visor de Guias Zygor",
	["desc"] = "Ajustes principales de Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "Hay %d guias cargadas.",

	["opt_guide"] = "Selecciona una guia:",
	["opt_guide_steps"] = "Pasos: %d",
	["opt_guide_author"] = "Autor: %s",
	["opt_guide_next"] = "Siguiente en la serie: %s",

	["opt_report"] = "Crear informe de error",
	["opt_report_desc"] = "Crea un informe con los detalles del paso mostrado. Copialo y pegalo para enviarlo a los autores de la guia.",

	["opt_visible"] = "Mostrar ventana de Zygor Guides Viewer",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "Ocultar guias en combate",
	["opt_hideincombat_desc"] = "Oculta todas las ventanas de guia durante el combate si la pantalla queda muy cargada.",
	
	--["opt_group_main"] = "Main window settings",
	["opt_opacitymain"] = "Opacidad",
	["opt_opacitymain_desc"] = "Opacidad de la ventana principal del visor.",
	["opt_framescale"] = "Escala",
	["opt_framescale_desc"] = "Puedes redimensionar la ventana segun tus preferencias.",
	["opt_fontsize"] = "Escala de texto",
	["opt_fontsize_desc"] = "Define tu tamano de texto preferido. La escala de la ventana tambien afecta este valor.",
	["opt_fontsecsize"] = "Escala de texto secundario",
	["opt_fontsecsize_desc"] = "Define el tamano preferido para texto secundario, usado en descripciones y notas.",
	["opt_backcolor"] = "Color de fondo",
	["opt_backcolor_desc"] = "Color de fondo de la ventana.",

	["opt_group_window"] = "Funciones de ventana",
	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Expandir hacia arriba",
	["opt_miniresizeup_desc"] = "Invierte la ventana para que se expanda hacia arriba en lugar de hacia abajo. Util si esta en la parte inferior de la pantalla.",
	["opt_opacitymini"] = "Opacidad del fondo",
	["opt_opacitymini_desc"] = "Opacidad del fondo de la ventana de pasos.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_showcountsteps"] = "Mostrar pasos:",
	["opt_showcountsteps_desc"] = "Numero de pasos a mostrar.\n|cffffffaaTodos|r muestra todos los pasos en una lista desplazable.\n|cffffffaa1-5|r muestra el paso actual arriba y ajusta automaticamente la ventana para mostrar solo varios pasos siguientes.",
	["opt_showcountsteps_all"] = "Todos",

	["opt_group_map"] = "Puntos de ruta",
	["opt_group_map_desc"] = "Estos ajustes controlan como Zygor Guides Viewer interactua con addons de mapa.",
	["opt_group_map_waypointing"] = "Addon de puntos de ruta",
	["opt_group_map_waypointing_desc"] = "Selecciona el addon que gestionara los puntos de ruta de Zygor Guides Viewer.",
	["opt_group_addons_internal"] = "Puntos de ruta integrados",
	["opt_group_addons_tomtom"] = "TomTom",
	["opt_group_addons_cart2"] = "Cartographer 2",
	["opt_group_addons_cart3"] = "Cartographer 3",
	["opt_group_addons_metamap"] = "MetaMap",
	["opt_group_addons_none"] = "ninguno",
	["opt_debug"] = "Depuracion",
	["opt_debug_desc"] = "Mostrar informacion de depuracion.",
	["opt_debugging"] = "Depuracion",
	["opt_debugging_desc"] = "Opciones de depuracion.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	["opt_autoskip"] = "Avanzar automaticamente",
	["opt_autoskip_desc"] = "Salta automaticamente al siguiente paso cuando se cumplen todas las condiciones. Aun asi, algunos pasos complejos pueden requerir salto manual.",

	["opt_goalicons"] = "Mostrar iconos de lineas de paso",
	["opt_goalicons_desc"] = "Muestra iconos segun el estado de completado.",
	["opt_goalcolorize"] = "Colorear lineas completadas",
	["opt_goalcolorize_desc"] = "Al completar lineas de paso, las colorea completamente en verde.",
	["opt_goalbackprogress"] = "Aplicar colores por porcentaje",
	["opt_goalbackprogress_desc"] = "Muestra progreso parcial con colores intermedios entre incompleto y completo.|nSi se desactiva, los objetivos solo usan colores de 'incompleto' o 'completo'.",

	["opt_group_step"] = "Objetivos del paso",

	["opt_goalbackcolor_desc"] = "Colores de completado:",
	["opt_goalbackgrounds"] = "Colorear fondos",
	["opt_goalbackgrounds_desc"] = "Colorea los fondos de lineas de paso para reflejar el progreso.",
	["opt_goalbackcomplete"] = "Completado",
	["opt_goalbackcomplete_desc"] = "Usa este color para objetivos completados.",
	["opt_goalbackincomplete"] = "Incompleto",
	["opt_goalbackincomplete_desc"] = "Usa este color para objetivos incompletos.",
	["opt_goalbackimpossible"] = "Imposible",
	["opt_goalbackimpossible_desc"] = "Usa este color para objetivos imposibles de completar en este momento.",

	['opt_tooltipsbelow'] = "Mostrar informacion extra en linea",
	['opt_tooltipsbelow_desc'] = "La informacion extra de ciertas lineas puede mostrarse en linea o como tooltip al pasar el raton.",

	["opt_flash_desc"] = "Notificacion de progreso:",
	["opt_goalcompletionflash"] = "Destello al completar objetivo",
	["opt_goalcompletionflash_desc"] = "Usa una indicacion visual de destello cuando se completa un objetivo.",
	["opt_goalupdateflash"] = "Destello al progresar objetivo",
	["opt_goalupdateflash_desc"] = "Usa una indicacion visual de destello cuando un objetivo avanza.",
	["opt_flashborder"] = "Destellar ventana al completar paso",
	["opt_flashborder_desc"] = "Hace destellar toda la ventana cuando se completa un paso.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

	["opt_group_display"] = "Visualizacion",
	["opt_group_display_desc"] = "Configura como quieres que se muestren las guias.",

	["opt_group_data"] = "Guias almacenadas",
	["opt_group_data_desc"] = "Zygor Guides Viewer puede guardar internamente guias comerciales que no pueden distribuirse como addons independientes.",
	["opt_group_data_guide"] = "Guias almacenadas internamente:",
	["opt_group_data_guide_desc"] = "Selecciona una guia almacenada para editarla o borrarla. Esta lista NO muestra guias cargadas como addons separados.",
	["opt_group_data_del"] = "Eliminar guia",
	["opt_group_data_del_desc"] = "Elimina la guia seleccionada del almacenamiento interno.",
	["opt_group_data_edit"] = "Editar guia",
	["opt_group_data_edit_desc"] = "Carga la guia seleccionada en el editor para hacer correcciones manuales.",
	["opt_group_data_entry"] = "Datos de la guia:",
	["opt_group_data_entry_desc"] = "Pega una guia nueva aqui (recuerda envolver sus pasos en:|nguide Titulo de la guia|nsteps...|nsteps...|nend\n); pegar y procesar una guia grande (>30kB) puede tardar unos segundos.",

	['opt_windowlocked'] = "Bloquear ventana",
	['opt_windowlocked_desc'] = "Bloquea la ventana para que no sea interactiva con el raton.\nSolo los botones quedan activos.",
	['opt_hideborder'] = "Ocultar borde automaticamente",
	['opt_hideborder_desc'] = "Oculta automaticamente el borde y botones cuando el raton no esta encima.\nPasa el raton por el titulo un momento para mostrarlo de nuevo.",

	['opt_skin'] = "Color del marco de ventana",
	['opt_skin_desc'] = "Elige un color para la decoracion de la ventana acorde a tu interfaz.",
	['opt_skin_violet'] = "|cffee55ffVioleta",
	['opt_skin_green'] = "|cff88ff88Verde",
	['opt_skin_blue'] = "|cff99aaffAzul",
	['opt_skin_orange'] = "|cffffbb00Naranja",

	['opt_backopacity'] = "Opacidad del fondo",
	['opt_backopacity_desc'] = "Opacidad del fondo de la ventana.",



	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Pulsa Ctrl+C para copiar este informe.|nDespues, envialo al autor de |cffffffff%s|r,|nen |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(guia sin nombre?)|r",
	["report_noauthor"] = "|cffff8888(sin direccion disponible)|r",


	["opt_mapbutton"] = "Mostrar boton del minimapa",
	["opt_mapbutton_desc"] = "Muestra el boton de Zygor Guides Viewer junto al minimapa",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Click|r para mostrar/ocultar la ventana de guias|n"..COLOR_TIP_MOUSE.."Click derecho|r para configurar|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"


	["waypointaddon_set"] = "Addon de puntos de ruta seleccionado: %s",
	["waypointaddon_connecting"] = "Conectando con addon de puntos de ruta: %s",
	["waypointaddon_connected"] = "Conectado correctamente a %s.",
	["waypointaddon_fail"] = "No se pudo conectar a %s.",
	['waypoint_step'] = "Paso %s",

	["checkmap"] = "Revisa tu mapa.",

	["initialized"] = 'Inicializado.',

	["miniframe_notloaded"] = "No hay guias de leveo cargadas.|n|nVisita http://zygorguides.com para comprar las guias 1-80 de Zygor, o carga guias de terceros.|n|nSi estas seguro de que instalaste guias, consulta con sus autores para solucionar la instalacion.",
	["miniframe_notselected"] = "No hay ninguna guia seleccionada.\nHaz click en el boton parpadeante de arriba para seleccionar una guia.",

	['frame_locked'] = "Ventana bloqueada",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Click|r para desbloquear",
	['frame_unlocked'] = "Ventana desbloqueada",
	['frame_lock'] = COLOR_TIP_MOUSE.."Click|r para bloquear",
	['frame_settings'] = "Opciones",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Click|r para ajustes basicos",
	['frame_settings2'] = COLOR_TIP_MOUSE.."Click derecho|r para abrir configuracion",
	['frame_minimized'] = "Mostrando |cffffffff%d|r paso(s)",
	['frame_maximized'] = "Mostrando todos los pasos",
	['frame_minimize'] = COLOR_TIP_MOUSE.."Click|r para mostrar solo |cffffffff%d|r",
	['frame_maximize'] = COLOR_TIP_MOUSE.."Click|r para mostrar todo",
	['frame_stepnav_prev'] = "Paso anterior",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Click|r para retroceder",
	['frame_stepnav_next'] = "Paso siguiente",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Click|r para saltar",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Click derecho|r para avanzar rapido",
	['frame_section'] = "Guia actual",
	['frame_section_click'] = COLOR_TIP_MOUSE.."Click|r para seleccionar",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."Click|r"..COLOR_TIP.." to set waypoint: |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Ubicacion: |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Error|r al cargar la guia |cffaaffaa%s|r\nlinea %d: %s\nerror: %s",
	["message_errorloading_brief"] = "|cffff4444Error|r al cargar la guia |cffaaffaa%s|r",
	["message_loadedguide"] = "Guia activada: |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Falta|r la guia: |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (ninguna guia cargada)",


	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaNivel: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (part %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Establece %s como tu hogar",
	["stepgoal_flightpath"] = "Consigue la ruta de vuelo de %s",

	["stepgoal_accept"] = "Acepta %s",
	["stepgoal_turn in"] = "Entrega %s",
	["stepgoal_talk to"] = "Habla con %s",
	["stepgoal_kill"] = "Mata %s",
	["stepgoal_kill #"] = "Mata %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Consigue %s",
	["stepgoal_get #"] = "Consigue %s %s",
	["stepgoal_ding"] = "Ahora deberias ser nivel %s.|n    Si no, sube un poco mas hasta alcanzarlo.",
	["stepgoal_go to"] = "Ve a %s",
	["stepgoal_also at"] = "Tambien en %s",
	["stepgoal_hearth to"] = "Usa piedra de hogar a %s",
	["stepgoal_collect"] = "Recoge %s",
	["stepgoal_collect #"] = "Recoge %s %s",
	["stepgoal_buy"] = "Compra %s %s",
	["stepgoal_fpath"] = "Consigue la ruta de vuelo de %s",
	["stepgoal_use"] = "Usa %s",
	["stepgoal_home"] = "Establece %s como tu hogar",
	["stepgoal_petaction"] = "Usa la accion de mascota %s",
	["stepgoal_havebuff"] = "Obtiene el beneficio/perjuicio \"%s\"",
	["stepgoal_nobuff"] = "Pierde el beneficio/perjuicio \"%s\"",
	["stepgoal_invehicle"] = "Entra en un vehiculo",
	["stepgoal_outvehicle"] = "Sal del vehiculo",
	["stepgoal_equipped"] = "Equipa %s",
	["stepgoal_at_suff"] = "  (%s)",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	--["completion_(done)"] = "(done)",

--[[
	["stepgoalshort_complete"] = "hecho",
	["stepgoalshort_incomplete"] = "pendiente",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
--]]

	["step_req"] = "Paso valido solo para: %s",


	["map_highlight"] = "Resaltar",

	["stepreq"] = "Requisito de clase/raza del paso: ",
	["stepreqor"] = " o ",

	["opt_do_searchforgoal"] = "Buscar un objetivo completable",
	["searching_for_goal_success"] = "Se encontro un objetivo completable para ti: %s. Puede ser un buen punto de inicio en la guia.",
	["searching_for_goal_failed"] = "No se encontro ningun objetivo completable. Prueba otra guia o seccion, toma algunas misiones o vuelve a buscar desde el inicio de la seccion (la busqueda solo avanza hacia delante).",

	["binding_togglewindow"] = "Mostrar ventana de guia",

} end)



local plurals = {
	["opt_group_map_hidearrowwithguide"] = "Ocultar flecha al cerrar el visor",
	["opt_group_map_hidearrowwithguide_desc"] = "Activa esto para que la flecha siga la visibilidad de la ventana de guia.\nDejalo desmarcado si quieres que la flecha siga visible cuando ocultes las guias.",
	["opt_group_addons_internal"] = "Puntos de ruta integrados",
	["opt_group_addons_carbonite"] = "Carbonite",
	["opt_stepnumber"] = "Mostrar numeros de paso",
	["opt_stepnumber_desc"] = "Muestra los numeros de paso y niveles sugeridos para cada paso.\nDesactivalo para ahorrar espacio en pantalla.",
	["opt_hidestepborders"] = "Ocultar bordes",
	["opt_hidestepborders_desc"] = "Oculta los bordes graficos alrededor de los pasos.",
	["opt_stepbackopacity"] = "Opacidad del fondo",
	["opt_stepbackopacity_desc"] = "Opacidad del fondo de la ventana de pasos.\nEl color del fondo coincide con el estado de completado y se oscurece.",
	["opt_goalbackprogressing"] = "Intermedio",
	["opt_goalbackprogressing_desc"] = "Este color indica objetivos al 50% de completado.",
	["opt_progressbackcolor_desc"] = "Colores de paso:",
	["opt_goalbackaux"] = "Viaje",
	["opt_goalbackaux_desc"] = "Usa este color para pasos de viaje.",
	["opt_goalbackobsolete"] = "Obsoleto",
	["opt_goalbackobsolete_desc"] = "Usa este color para objetivos o pasos obsoletos.",
	["opt_resetwindow"] = "Restablecer ventana",
	["opt_resetwindow_desc"] = "Si mueves la ventana fuera de pantalla, este boton la devuelve al centro.",
	["opt_trackchains"] = "Rastrear cadenas de misiones",
	["opt_trackchains_desc"] = "Marca los pasos de aceptar misiones como no disponibles si no completaste una mision previa.\n\nLa base de datos de cadenas incluye \"cadenas flexibles\", misiones que se siguen entre si pero no requieren orden estricto; por eso, a veces una linea de aceptar mision puede mostrarse como no disponible aunque la mision pueda aceptarse.",
	["opt_guidesinhistory"] = "Numero de guias recientes",
	["opt_guidesinhistory_desc"] = "Muestra este numero de guias usadas recientemente.",
	["opt_skin_remaster"] = "|cffc7d9ffRemaster (predeterminado)",
	["opt_group_progress"] = "Progreso dinamico",
	["opt_group_progress_desc"] = "Para optimizar el leveo, este addon puede omitir dinamicamente misiones que no te benefician en tu nivel.",
	["opt_levelsahead"] = "Permitir niveles por delante",
	["opt_levelsahead_desc"] = "Este ajuste controla cuan por delante de la guia quieres jugar.\nCon 0, se omitiran las misiones normalmente hechas por debajo de tu nivel (si no tienen continuacion).\nCon 1 o mas, solo se omitiran misiones que esten mas de esos niveles por debajo de ti.",
	["opt_showobsolete"] = "Marcar pasos obsoletos",
	["opt_showobsolete_desc"] = "Marca pasos obsoletos con fondo gris.\nSe consideran obsoletos cuando son de nivel demasiado bajo para ti.",
	["opt_skipobsolete"] = "Omitir pasos obsoletos",
	["opt_skipobsolete_desc"] = "Omitir automaticamente pasos obsoletos.",
	["opt_skipauxsteps"] = "Omitir pasos de viaje",
	["opt_skipauxsteps_desc"] = "Omitir automaticamente pasos de viaje si van seguidos de pasos ya completados u obsoletos.\nEsto evita casos en los que completas \"Ve a una zona lejana 12,34\" y luego el siguiente paso es \"Acepta una mision\" que ya habias hecho.",
	["opt_skipflightsteps"] = "Asumir rutas de vuelo conocidas",
	["opt_skipflightsteps_desc"] = "Asume que gestionas por tu cuenta el descubrimiento de rutas de vuelo y marca automaticamente esos pasos como completados.\n\nEs mas util al incorporarte a una guia ya avanzada que durante el juego normal.",
	["opt_skipimpossible"] = "Omitir pasos imposibles",
	["opt_skipimpossible_desc"] = "Omitir automaticamente pasos imposibles, para no mostrar objetivos de misiones que omitiste intencionalmente.",
	["opt_group_progress_bottomdesc"] = "El progreso dinamico marca misiones como \"obsoletas\" cuando vas mas adelantado en nivel que la guia por encima del valor definido arriba. Las cadenas de misiones solo se marcan obsoletas si toda la cadena lo es.\n\nPara jugadores nuevos, esto ayuda a usar las guias omitiendo contenido de bajo nivel y parando solo en cadenas que aun te beneficiaran. Si quieres un buen punto de inicio, carga la guia inicial de tu raza y deja que el visor omita grandes partes hasta llegar a una seccion adecuada para tu nivel.\n\nPara jugadores con experiencia, esto evita que la guia te frene con misiones de bajo nivel si subes mas rapido de lo esperado (por ejemplo, haciendo mazmorras o con bonus de experiencia descansada). Puedes definir cuanto quieres adelantarte antes de que la guia te empuje a avanzar omitiendo misiones.",
	["opt_group_mapinternal"] = "Puntos de ruta internos",
	["opt_arrowmeters"] = "Sistema metrico",
	["opt_arrowmeters_desc"] = "Usa metros y kilometros en lugar de yardas y millas.",
	["opt_arrowfreeze"] = "Flecha ignora clics",
	["opt_arrowfreeze_desc"] = "Hace que la flecha ignore acciones del raton. Desmarcalo para poder arrastrarla.",
	["opt_arrowcam"] = "Flecha sigue la camara",
	["opt_arrowcam_desc"] = "Muestra direcciones segun hacia donde apunta la camara. Si se desactiva, la flecha se basa en la orientacion del personaje.\n\nNota: en modo camara, la flecha puede apuntar raro al usar click-para-mover.",
	["opt_arrowcolordir"] = "Color segun direccion",
	["opt_arrowcolordir_desc"] = "Colorea la gema de la flecha en verde cuando apunte al destino.\n\nDesactivalo si quieres que se ponga verde solo al acercarte al destino.",
	["opt_arrowscale"] = "Escala de flecha",
	["opt_arrowscale_desc"] = "Ajusta el tamano de la flecha de ruta.",
	["opt_arrowfontsize"] = "Tamano de fuente de la flecha",
	["opt_arrowfontsize_desc"] = "Ajusta el tamano de las etiquetas bajo la flecha.",
	["opt_mapcoords"] = "Mostrar coordenadas",
	["opt_mapcoords_desc"] = "Muestra coordenadas del jugador y cursor en el mapa del mundo.",
	["opt_minimapzoom"] = "Zoom del minimapa",
	["opt_minimapzoom_desc"] = "Hace zoom automatico al minimapa al acercarte al destino.",
	["opt_audiocues"] = "Senales sonoras",
	["opt_audiocues_desc"] = "Proporciona senales de navegacion por sonido al volar en linea recta mas de 5 segundos.\nAsi puedes orientarte, volar hacia delante y hacer Alt-Tab.\nAl llegar suena una campana; si te desvias del destino suena una alerta.",
	["opt_foglight"] = "Revelar mapa",
	["opt_foglight_desc"] = "Revela zonas inexploradas del mapa.",
	["opt_group_convenience"] = "Funciones extra",
	["opt_group_convenience_desc"] = "Varias funciones adicionales utiles.",
	["opt_autoaccept"] = "Aceptar misiones automaticamente",
	["opt_autoaccept_desc"] = "Acepta misiones automaticamente si el paso actual lo indica.\n|cffffaa88Esto acelera mucho el leveo, pero puede confundir.|r",
	["opt_autoturnin"] = "Entregar misiones automaticamente",
	["opt_autoturnin_desc"] = "Entrega misiones automaticamente si el paso actual lo indica.\nSolo funciona si no hay recompensa para elegir.\n|cffffaa88Esto acelera mucho el leveo, pero puede confundir.|r",
	["opt_fixblizzardautoaccept"] = "Corregir autoaceptacion integrada",
	["opt_fixblizzardautoaccept_desc"] = "Desde el parche 3.2, las misiones de niveles 1-3 se aceptan solas pero la ventana queda abierta. Esta opcion cambia el boton \"Accept\" a \"Accepted\" para que sea mas natural.|r",
	["opt_analyzereps"] = "Ganancias de reputacion detalladas",
	["opt_analyzereps_desc"] = "Muestra mensajes detallados de reputacion en el chat, indicando porcentaje ganado y siguiente nivel.",
	["opt_group_gold"] = "Guia de oro",
	["opt_group_gold_desc"] = "Estas opciones controlan el comportamiento de las notas del mapa de la guia de oro de Zygor.",
	["opt_gold_detectiondist"] = "Distancia de deteccion",
	["opt_gold_detectiondist_desc"] = "Controla a que distancia se consideran cercanos los puntos de oro.",
	["opt_gold_reqmode"] = "Filtrar ubicaciones por profesion",
	["opt_gold_reqmode_desc"] = "Decide si mostrar todas las ubicaciones (mineria, desuello, etc.) o solo las que tu personaje puede usar.",
	["opt_gold_reqmode_all"] = "Mostrar todas las ubicaciones",
	["opt_gold_reqmode_future"] = "Profesiones actuales, ignorar nivel",
	["opt_gold_reqmode_current"] = "Profesiones y niveles actuales",
	["waypointaddon_detecting"] = "Intentando detectar automaticamente addon de puntos de ruta...",
	["waypointaddon_disconnected"] = "Desconectado de |cffddeeff%s|r.",
	["pointer_corpselabel1"] = "Tu ex yo",
	["pointer_corpselabel2"] = "El que aprende a huir...",
	["pointer_corpselabel3"] = "Mordiste mas de lo que podias masticar, eh.",
	["pointer_corpselabel4"] = "Pateacubos - por aqui",
	["pointer_corpselabel5"] = "Mejor no pienses en la factura de reparacion.",
	["miniframe_loading"] = "Cargando guias: %d%%",
	["stepgoal_rep"] = "Alcanza %s con %s",
	["stepgoal_achieve"] = "Consigue el logro \"%s\"",
	["stepgoal_achievesub"] = "Completa \"%s\" para el logro \"%s\"",
	["stepgoal_skill"] = "Aprende %s hasta nivel %s",
	["stepgoal_skillmax"] = "Sube %s al maximo nivel %s",
	["stepgoal_learn"] = "Aprende a crear %s",
	["stepgoal_or"] = "   - o -",
	["completion_done"] = "(hecho)",
	["completion_rep"] = "(%s)",
	["binding_prev"] = "Paso anterior",
	["binding_next"] = "Paso siguiente",
	["req_not"] = "no %s",
	["menu_last"] = "Ultimas guias:",
	["menu_last_entry"] = "%s |cffaaaaaapaso|r %d",
	["gold_missing_nospotsinrange"] = "No hay puntos de oro dentro del rango.",
	["gold_missing_noguidesloaded"] = "No hay guias de oro cargadas!",
	["gold_header_drop"] = "Botin de |cffffdddd%s|r:",
	["gold_header_ore"] = "Vetas de mineral:",
	["gold_header_herb"] = "Hierbas:",
	["gold_header_skin"] = "Desuello:",
	["going"] = "%d%% hacia %s",
	["haman$"] = "hamans",
	["(%a)man$"] = "%1men",
}

ZygorGuidesViewer_L("Specials", "esES", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)



-- Add lines for any translations needed for:

-- MISC STRINGS

ZygorGuidesViewer_L("G_string", "esES", function() return {
--	["blabla"] = TRUE,
} end)
