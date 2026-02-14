if GetLocale()~="deDE" then return end

-- These are the main viewer's lines.

local COLOR_TIP_MOUSE = "|cffeedd99"
local COLOR_TIP_HINT = "|cff99ff00"
local COLOR_TIP = "|cff00ff00"

ZygorGuidesViewer_L("Main", "deDE", function() return {
	["name"] = "|cffffff88Z|cffffee66y|cffffdd44g|cffffcc22o|cffffbb00r |cffffaa00Guide-Betrachter|r",
	["name_plain"] = "Zygor Guide-Betrachter",
	["desc"] = "Haupteinstellungen fuer Zygor Guides Viewer %s.|n",

	['welcome_guides'] = "%d Guides sind geladen.",

	["opt_guide"] = "Guide auswaehlen:",
	["opt_guide_steps"] = "Schritte: %d",
	["opt_guide_author"] = "Autor: %s",
	["opt_guide_next"] = "Naechster in der Reihe: %s",

	["opt_report"] = "Fehlerhaften Schritt melden",
	["opt_report_desc"] = "Erstellt einen Fehlerbericht mit den Details des aktuell angezeigten Schritts. Kopieren/einfuegen und an die Guide-Autoren senden.",

	["opt_visible"] = "Zygor Guides Viewer-Fenster anzeigen",
	["opt_visible_desc"] = "",
	["opt_hideincombat"] = "Guides im Kampf ausblenden",
	["opt_hideincombat_desc"] = "Blendet alle Guide-Fenster waehrend des Kampfes aus, wenn der Bildschirm zu voll wird.",
	
	--["opt_group_main"] = "Main window settings",
	["opt_opacitymain"] = "Deckkraft",
	["opt_opacitymain_desc"] = "Deckkraft des Hauptfensters.",
	["opt_framescale"] = "Skalierung",
	["opt_framescale_desc"] = "Fenstergroesse nach deinen Vorlieben anpassen.",
	["opt_fontsize"] = "Textgroesse",
	["opt_fontsize_desc"] = "Bevorzugte Textgroesse. Die Fensterskalierung beeinflusst diesen Wert ebenfalls.",
	["opt_fontsecsize"] = "Sekundaere Textgroesse",
	["opt_fontsecsize_desc"] = "Bevorzugte sekundaere Textgroesse fuer zusaetzliche Beschreibungen und Hinweise.",
	["opt_backcolor"] = "Hintergrundfarbe",
	["opt_backcolor_desc"] = "Hintergrundfarbe des Fensters.",

	["opt_group_window"] = "Fensterfunktionen",
	--["opt_minimapnotedesc"] = "Show waypoint caption",
	--["opt_minimapnotedesc_desc"] = "Show the relevant waypoint's caption not only on the waypoint's tooltip, but on the mini window as well.",
	--["opt_showgoals"] = "Show step goals",
	--["opt_showgoals_desc"] = "Show step completion goals in the mini window",
	--["opt_autosizemini"] = "Auto-size",
	--["opt_autosizemini_desc"] = "Automatically adjust the height of the mini window.",
	["opt_miniresizeup"] = "Nach oben vergroessern",
	["opt_miniresizeup_desc"] = "Dreht die Erweiterungsrichtung um, sodass das Fenster nach oben statt nach unten waechst. Nuetzlich am unteren Bildschirmrand.",
	["opt_opacitymini"] = "Hintergrund-Deckkraft",
	["opt_opacitymini_desc"] = "Deckkraft des Schrittfenster-Hintergrunds.",

	--["opt_showallsteps"] = "Collapsed mode",
	--["opt_showallsteps_desc"] = "Display only the current step and some next steps, instead of the whole guide",

	["opt_showcountsteps"] = "Schritte anzeigen:",
	["opt_showcountsteps_desc"] = "Anzahl der anzuzeigenden Schritte.\n|cffffffaaAlle|r zeigt alle Schritte in einer scrollbaren Liste.\n|cffffffaa1-5|r zeigt den aktuellen Schritt oben und passt die Fenstergroesse automatisch fuer einige folgende Schritte an.",
	["opt_showcountsteps_all"] = "Alle",

	["opt_group_map"] = "Wegpunkte",
	["opt_group_map_desc"] = "Diese Einstellungen steuern, wie Zygor Guides Viewer mit Karten-Addons zusammenarbeitet.",
	["opt_group_map_waypointing"] = "Wegpunkt-Addon",
	["opt_group_map_waypointing_desc"] = "Waehle das Addon, das Wegpunkte fuer Zygor Guides Viewer verwalten soll.",
	["opt_group_addons_builtin"] = "Integrierte Wegpunkte",
	["opt_group_addons_tomtom"] = "TomTom (Addon)",
	["opt_group_addons_cart2"] = "Cartographer 2 (Addon)",
	["opt_group_addons_cart3"] = "Cartographer 3 (Addon)",
	["opt_group_addons_metamap"] = "MetaMap (Addon)",
	["opt_group_addons_none"] = "keins",
	["opt_debug"] = "Fehlersuche",
	["opt_debug_desc"] = "Debug-Informationen anzeigen.",
	["opt_debugging"] = "Fehlersuche",
	["opt_debugging_desc"] = "Debugging-Optionen.",
	--["opt_browse"] = "Toggle windows",
	 --["opt_browse_desc"] = "Toggle the visibility of either of Zygor's Guides windows.",

	["opt_autoskip"] = "Automatisch weiter",
	["opt_autoskip_desc"] = "Springt automatisch zum naechsten Schritt, wenn alle Bedingungen erfuellt sind. Einige komplexe Schritte muessen eventuell weiterhin manuell uebersprungen werden.",

	["opt_goalicons"] = "Schritt-Symbole anzeigen",
	["opt_goalicons_desc"] = "Symbole entsprechend dem Fortschrittsstatus anzeigen.",
	["opt_goalcolorize"] = "Abgeschlossene Schrittzeilen einfaerben",
	["opt_goalcolorize_desc"] = "Abgeschlossene Schrittzeilen vollstaendig gruen einfaerben.",
	["opt_goalbackprogress"] = "Farben nach Fortschrittsprozent anwenden",
	["opt_goalbackprogress_desc"] = "Teilfortschritt als Zwischenfarben zwischen unvollstaendig und vollstaendig anzeigen.|nWenn aus, werden nur die Farben fuer 'unvollstaendig' und 'vollstaendig' verwendet.",

	["opt_group_step"] = "Schrittziele",

	["opt_goalbackcolor_desc"] = "Fortschrittsfarben:",
	["opt_goalbackgrounds"] = "Hintergruende einfaerben",
	["opt_goalbackgrounds_desc"] = "Hintergruende der Schrittzeilen gemaess Fortschritt einfaerben.",
	["opt_goalbackcomplete"] = "Vollstaendig",
	["opt_goalbackcomplete_desc"] = "Diese Farbe fuer vollstaendige Ziele verwenden.",
	["opt_goalbackincomplete"] = "Unvollstaendig",
	["opt_goalbackincomplete_desc"] = "Diese Farbe fuer unvollstaendige Ziele verwenden.",
	["opt_goalbackimpossible"] = "Unmoeglich",
	["opt_goalbackimpossible_desc"] = "Diese Farbe fuer derzeit unmoegliche Ziele verwenden.",

	['opt_tooltipsbelow'] = "Zusaetzliche Infos in der Zeile anzeigen",
	['opt_tooltipsbelow_desc'] = "Zusaetzliche Informationen zu bestimmten Schrittzeilen koennen direkt in der Zeile oder als Tooltip beim Ueberfahren angezeigt werden.",

	["opt_flash_desc"] = "Fortschrittsbenachrichtigung:",
	["opt_goalcompletionflash"] = "Ziel bei Abschluss aufblitzen lassen",
	["opt_goalcompletionflash_desc"] = "Verwendet einen visuellen Aufblitz-Effekt, wenn ein einzelnes Ziel abgeschlossen wird.",
	["opt_goalupdateflash"] = "Ziel bei Fortschritt aufblitzen lassen",
	["opt_goalupdateflash_desc"] = "Verwendet einen visuellen Aufblitz-Effekt, wenn ein einzelnes Ziel Fortschritt erhaelt.",
	["opt_flashborder"] = "Fenster bei Schrittabschluss aufblitzen lassen",
	["opt_flashborder_desc"] = "Laesst das gesamte Fenster aufblitzen, wenn ein Schritt abgeschlossen wird.",

	--["opt_colorborder"] = "Color step window border",
	--["opt_colorborder_desc"] = "Use the step window border's color to indicate completion of the whole step.",

	["opt_group_display"] = "Anzeige",
	["opt_group_display_desc"] = "Lege fest, wie die Guides angezeigt werden sollen.",

	["opt_group_data"] = "Gespeicherte Guides",
	["opt_group_data_desc"] = "Zygor Guides Viewer kann kommerzielle Guides intern speichern, die nicht als eigenstaendige Addons verteilt werden duerfen.",
	["opt_group_data_guide"] = "Intern gespeicherte Guides:",
	["opt_group_data_guide_desc"] = "Waehle einen gespeicherten Guide aus dieser Liste, um ihn zu bearbeiten oder zu loeschen. Diese Liste zeigt KEINE separat geladenen Addons.",
	["opt_group_data_del"] = "Guide loeschen",
	["opt_group_data_del_desc"] = "Loescht den ausgewaehlten Guide aus dem internen Speicher.",
	["opt_group_data_edit"] = "Guide bearbeiten",
	["opt_group_data_edit_desc"] = "Laedt den ausgewaehlten Guide in das Editorfenster unten, um ihn direkt zu bearbeiten.",
	["opt_group_data_entry"] = "Guide-Daten:",
	["opt_group_data_entry_desc"] = "Fuege hier einen neuen Guide ein (die Schritte muessen in folgendes Format:|nguide Title Of Guide|nsteps...|nsteps...|nend\n); das Einfuegen und Parsen eines grossen Guides (>30kB) kann einige Sekunden dauern.",

	['opt_windowlocked'] = "Fenster sperren",
	['opt_windowlocked_desc'] = "Sperrt das Fenster, sodass es nicht mehr mit der Maus verschoben werden kann.\nNur Schaltflaechen bleiben aktiv.",
	['opt_hideborder'] = "Rahmen automatisch ausblenden",
	['opt_hideborder_desc'] = "Blendet Rahmen und Schaltflaechen automatisch aus, wenn die Maus nicht ueber dem Fenster ist.\nFahre kurz ueber den Fenstertitel, um sie wieder einzublenden.",

	['opt_skin'] = "Fenster-Designfarbe",
	['opt_skin_desc'] = "Waehle eine Farbe fuer die Fensterdekoration passend zur Benutzeroberflaeche.",
	['opt_skin_violet'] = "|cffee55ffViolett",
	['opt_skin_green'] = "|cff88ff88Gruen",
	['opt_skin_blue'] = "|cff99aaffBlau",
	['opt_skin_orange'] = "|cffffbb00Orangefarben",

	['opt_backopacity'] = "Hintergrund-Deckkraft",
	['opt_backopacity_desc'] = "Deckkraft des Fensterhintergrunds.",



	--["mainframe_guide"] = "Select a guide:",
	--["mainframe_notloaded"] = "No leveling guides are loaded.|n|nPlease go to http://zygorguides.com to purchase Zygor's 1-80 Leveling Guides, or load some third-party guides.|n|nIf you're sure you have installed some guides, ask their authors for installation troubleshooting.",
	--["mainframe_notselected"] = "%d guides are loaded.|nPlease select a guide from the list above.",


	["report_title"] = "Druecke Ctrl+C, um diesen Bericht zu kopieren.|nSende ihn dann an den Autor von |cffffffff%s|r,|nan |cffffffff%s|r.",
	["report_notitle"] = "|cffff8888(unbenannter Guide?)|r",
	["report_noauthor"] = "|cffff8888(keine Adresse verfuegbar)|r",


	["opt_mapbutton"] = "Minikarten-Schaltflaeche anzeigen",
	["opt_mapbutton_desc"] = "Zeigt die Schaltflaeche von Zygor Guides Viewer neben der Minikarte an",

	["minimap_tooltip"] = COLOR_TIP_MOUSE.."Klick|r zum Ein-/Ausblenden des Guide-Fensters|n"..COLOR_TIP_MOUSE.."Rechtsklick|r fuer Einstellungen|n", --..COLOR_TIP_MOUSE.."Drag|r to move icon"


	["waypointaddon_set"] = "Wegpunkt-Addon ausgewaehlt: %s",
	["waypointaddon_connecting"] = "Verbinde mit Wegpunkt-Addon: %s",
	["waypointaddon_connected"] = "Erfolgreich mit %s verbunden.",
	["waypointaddon_fail"] = "Verbindung mit %s fehlgeschlagen.",
	['waypoint_step'] = "Stufe %s",

	["checkmap"] = "Pruefe deine Karte.",

	["initialized"] = 'Initialisiert.',

	["miniframe_notloaded"] = "Keine Leveling-Guides sind geladen.|n|nBesuche http://zygorguides.com, um Zygors 1-80 Leveling Guides zu kaufen, oder lade Guides von Drittanbietern.|n|nWenn du sicher bist, dass Guides installiert sind, frage deren Autoren nach Installationshilfe.",
	["miniframe_notselected"] = "Derzeit ist kein Guide ausgewaehlt.\nKlicke auf die blinkende Schaltflaeche oben, um einen Guide auszuwaehlen.",

	['frame_locked'] = "Fenster gefixiert",
	['frame_unlock'] = COLOR_TIP_MOUSE.."Linksklick|r zum freigeben",
	['frame_unlocked'] = "Fenster frei",
	['frame_lock'] = COLOR_TIP_MOUSE.."Linksklick|r zum fixieren",
	['frame_settings'] = "Optionen",
	['frame_settings1'] = COLOR_TIP_MOUSE.."Linksklick|r fuer Menue",
	['frame_settings2'] = COLOR_TIP_MOUSE.."Rechtsklick|r für Optionen",
	['frame_minimized'] = "Zeigt |cffffffff%d|r Schritt(e)",
	['frame_maximized'] = "Zeigt alle Schritte",
	['frame_minimize'] = COLOR_TIP_MOUSE.."Linksklick|r für nur |cffffffff%d|r anzeigen",
	['frame_maximize'] = COLOR_TIP_MOUSE.."Linksklick|r für alles anzeigen",
	['frame_stepnav_prev'] = "Vorheriger Schritt",
	['frame_stepnav_prev_click'] = COLOR_TIP_MOUSE.."Linksklick|r: zurück",
	['frame_stepnav_next'] = "Naechster Schritt",
	['frame_stepnav_next_click'] = COLOR_TIP_MOUSE.."Linksklick|r: weiter",
	['frame_stepnav_next_right'] = COLOR_TIP_MOUSE.."Rechtsklick|r: vorspulen",
	['frame_section'] = "Aktueller Guide",
	['frame_section_click'] = COLOR_TIP_MOUSE.."Klick|r zum Auswaehlen",


	['tooltip_tip'] = COLOR_TIP_HINT.."%s|r",
	['tooltip_waypoint'] = COLOR_TIP_MOUSE.."Klick|r"..COLOR_TIP.." um Wegpunkt zu setzen: |cffffaa00%s|r",
	['tooltip_waypoint_coords'] = "Position: |cffffaa00%s|r",

	["message_errorloading_full"] = "|cffff4444Fehler|r beim Laden von Guide |cffaaffaa%s|r\nZeile %d: %s\nFehler: %s",
	["message_errorloading_brief"] = "|cffff4444Fehler|r beim Laden von Guide |cffaaffaa%s|r",
	["message_loadedguide"] = "Guide aktiviert: |cffaaffaa%s|r",
	["message_missingguide"] = "|cffff4444Fehlender|r Guide: |cffaaffaa%s|r",
	["title_noguide"] = "Zygor Guides Viewer (kein Guide geladen)",


	['step_num'] = "|cffaaaaaa%s|cff888888.|r ",
	['step_level'] = "|cffaaccaaStufe: |cffcceecc%s|cffaaccaa|r ",

	["questtitle"] = "`%s'",
	["questtitle_part"] = "`%s' (teil %s)",
	["coords"] = "%d,%d",
	["map_coords"] = "%s %d,%d",

	["stepgoal_home"] = "Setze dein Zuhause auf %s",
	["stepgoal_flightpath"] = "Nimm den Flugpunkt %s",

	["stepgoal_accept"] = "Nehme %s an",
	["stepgoal_turn in"] = "Gebe %s ab",
	["stepgoal_talk to"] = "Spreche mit %s",
	["stepgoal_kill"] = "Töte %s",
	["stepgoal_kill #"] = "Töte %s %s",
	["stepgoal_goal"] = "%s",
	["stepgoal_goal #"] = "%s %s",
	["stepgoal_get"] = "Besorge %s",
	["stepgoal_get #"] = "Besorge %s %s",
	["stepgoal_ding"] = "Du solltest jetzt Stufe %s sein.|n    Falls nicht, kaempfe noch etwas bis du sie erreicht hast.",
	["stepgoal_go to"] = "Gehe zum %s",
	["stepgoal_also at"] = "Also an %s",
	["stepgoal_hearth to"] = "Ruhestein nach %s",
	["stepgoal_collect"] = "Sammle %s",
	["stepgoal_collect #"] = "Sammle %s %s",
	["stepgoal_buy"] = "Kaufe %s %s",
	["stepgoal_fpath"] = "Nimm den Flugpunkt %s",
	["stepgoal_use"] = "Benutze %s",
	["stepgoal_home"] = "Mache %s zu deinem Zuhause",
	["stepgoal_petaction"] = "Benutze Tieraktion %s",
	["stepgoal_havebuff"] = "Erhalte Buff/Debuff '%s'",
	["stepgoal_nobuff"] = "Verliere Buff/Debuff '%s'",
	["stepgoal_invehicle"] = "Steige in ein Fahrzeug",
	["stepgoal_outvehicle"] = "Verlasse das Fahrzeug",
	["stepgoal_equipped"] = "Lege %s an",
	["stepgoal_at_suff"] = " (%s)",

	["completion_collect"] = "(%s/%s)",
	["completion_goal"] = "(%s/%s)",
	["completion_ding"] = "(%s%%)",
	--["completion_(done)"] = "(done)",

--[[
	["stepgoalshort_complete"] = "fertig",
	["stepgoalshort_incomplete"] = "offen",
	["stepgoalshort_questgoal"] = "(%d/%d)",
	["stepgoalshort_level"] = "(%d%%)",
--]]

	["step_req"] = "Schritt nur gueltig fuer: %s",


	["map_highlight"] = "Hervorheben",

	["stepreq"] = "Schritt Klassen-/Rassenanforderung: ",
	["stepreqor"] = " oder ",

	["opt_do_searchforgoal"] = "Erfuellbares Ziel finden",
	["searching_for_goal_success"] = "Ein erfuellbares Ziel wurde fuer dich gefunden: %s. Das kann ein guter Einstiegspunkt im Guide sein.",
	["searching_for_goal_failed"] = "Kein erfuellbares Ziel gefunden. Probiere einen anderen Guide oder Abschnitt, nimm ein paar Quests an oder starte die Suche vom Abschnittsbeginn (die Suche geht nur vorwaerts).",

	["going"] = "%d%% bis %s",
	["miniframe_loading"] = "Lade Guides: %d%%",
	["menu_last"] = "Zuletzt verwendete Guides",
	["menu_last_entry"] = "%s |cffaaffaa%d|r",

	["completion_done"] = "(fertig)",
	["completion_rep"] = "(%s)",

	["req_not"] = "nicht %s",

	["stepgoal_rep"] = "Werde %s bei %s",
	["stepgoal_achieve"] = "Erhalte Erfolg '%s'",
	["stepgoal_achievesub"] = "Schliesse '%s' fuer den Erfolg '%s' ab",
	["stepgoal_skill"] = "Lerne %s bis Stufe %s",
	["stepgoal_skillmax"] = "Steigere %s auf die maximale Stufe %s",
	["stepgoal_learn"] = "Lerne, %s herzustellen",
	["stepgoal_or"] = "  - oder -",

	["binding_prev"] = "Vorheriger Schritt",
	["binding_next"] = "Naechster Schritt",

	["waypointaddon_detecting"] = "Versuche, Wegpunkt-Addon automatisch zu erkennen...",
	["waypointaddon_disconnected"] = "Verbindung zu |cffddeeff%s|r getrennt.",
	["pointer_corpselabel1"] = "Ex-du",
	["pointer_corpselabel2"] = "Wer wegrennt, lebt laenger...",
	["pointer_corpselabel3"] = "Da war wohl ein Gegner zu viel.",
	["pointer_corpselabel4"] = "Eimer-Treter - hier entlang",
	["pointer_corpselabel5"] = "Denk lieber nicht an die Reparaturkosten.",

	["opt_group_map_hidearrowwithguide"] = "Pfeil beim Schliessen des Viewers ausblenden",
	["opt_group_map_hidearrowwithguide_desc"] = "Aktiviere dies, damit der Pfeil der Sichtbarkeit des Guide-Fensters folgt.\nDeaktiviert lassen, wenn der Pfeil sichtbar bleiben soll, wenn du Guides ausblendest.",
	["opt_group_addons_internal"] = "Integrierte Wegpunkte",
	["opt_group_addons_carbonite"] = "Carbonite (Addon)",
	["opt_stepnumber"] = "Schrittnummern anzeigen",
	["opt_stepnumber_desc"] = "Zeige Schrittnummern und empfohlene Stufen fuer jeden Schritt an.\nDeaktiviere dies, um Bildschirmplatz zu sparen.",
	["opt_hidestepborders"] = "Rahmen ausblenden",
	["opt_hidestepborders_desc"] = "Blendet die grafischen Rahmen um Schritte aus.",
	["opt_stepbackopacity"] = "Hintergrund-Deckkraft",
	["opt_stepbackopacity_desc"] = "Deckkraft des Schrittfenster-Hintergrunds.\nDie Hintergrundfarbe richtet sich nach dem Fortschritt und wird abgedunkelt.",
	["opt_goalbackprogressing"] = "Mitte",
	["opt_goalbackprogressing_desc"] = "Diese Farbe markiert Ziele bei 50% Fortschritt.",
	["opt_progressbackcolor_desc"] = "Schrittfarben:",
	["opt_goalbackaux"] = "Reise",
	["opt_goalbackaux_desc"] = "Diese Farbe fuer Reiseschritte verwenden.",
	["opt_goalbackobsolete"] = "Veraltet",
	["opt_goalbackobsolete_desc"] = "Diese Farbe fuer veraltete Ziele oder Schritte verwenden.",
	["opt_resetwindow"] = "Fenster zuruecksetzen",
	["opt_resetwindow_desc"] = "Wenn das Fenster ausserhalb des Bildschirms liegt, setzt diese Schaltflaeche es zurueck in die Mitte.",
	["opt_trackchains"] = "Questketten verfolgen",
	["opt_trackchains_desc"] = "Markiert Quest-Annahme-Schritte als nicht verfuegbar, wenn eine vorherige Quest nicht abgeschlossen wurde.\n\nDie Questketten-Datenbank enthaelt auch \"lockere Ketten\"; dadurch kann eine Questannahme manchmal als nicht verfuegbar erscheinen, obwohl sie angenommen werden kann.",
	["opt_guidesinhistory"] = "Anzahl zuletzt genutzter Guides",
	["opt_guidesinhistory_desc"] = "Zeigt diese Anzahl kuerzlich genutzter Guides an.",
	["opt_skin_remaster"] = "|cffc7d9ffRemaster (Standard)",
	["opt_group_progress"] = "Dynamischer Fortschritt",
	["opt_group_progress_desc"] = "Zur Optimierung des Levelns kann dieses Addon Quests dynamisch ueberspringen, die dir auf deiner Stufe wenig bringen.",
	["opt_levelsahead"] = "Stufen voraus erlauben",
	["opt_levelsahead_desc"] = "Diese Einstellung steuert, wie weit du dem Guide voraus sein willst.\nMit 0 werden Quests unterhalb deiner Stufe normalerweise uebersprungen (wenn sie keine Folgequests haben).\nMit 1 oder mehr werden nur Quests uebersprungen, die mehr als diese Anzahl Stufen unter dir liegen.",
	["opt_showobsolete"] = "Veraltete Schritte markieren",
	["opt_showobsolete_desc"] = "Markiert veraltete Schritte mit grauem Hintergrund.\nSchritte gelten als veraltet, wenn sie fuer deine Stufe zu niedrig sind.",
	["opt_skipobsolete"] = "Veraltete Schritte ueberspringen",
	["opt_skipobsolete_desc"] = "Ueberspringt veraltete Schritte automatisch.",
	["opt_skipauxsteps"] = "Reiseschritte ueberspringen",
	["opt_skipauxsteps_desc"] = "Ueberspringt Reiseschritte automatisch, wenn danach bereits abgeschlossene oder veraltete Schritte folgen.\nDamit wird vermieden, dass du weit reist und danach ein bereits erledigter Annahmeschritt folgt.",
	["opt_skipflightsteps"] = "Flugrouten als bekannt annehmen",
	["opt_skipflightsteps_desc"] = "Nimmt an, dass du Flugrouten selbst verwaltest, und markiert Flugrouten-Schritte automatisch als abgeschlossen.\n\nBesonders nuetzlich beim Einstieg in spaetere Guide-Abschnitte.",
	["opt_skipimpossible"] = "Unmoegliche Schritte ueberspringen",
	["opt_skipimpossible_desc"] = "Ueberspringt unmoegliche Schritte automatisch, falls du absichtlich ausgelassene Questziele nicht angezeigt bekommen moechtest.",
	["opt_group_progress_bottomdesc"] = "Dynamischer Fortschritt markiert Quests als \"veraltet\", wenn du den im Guide erwarteten Stufenbereich um mehr als den oben definierten Wert ueberschreitest. Questketten werden nur dann als veraltet markiert, wenn die gesamte Kette veraltet ist.\n\nFuer neue Spieler hilft dies, indem Inhalte niedriger Stufe intelligent uebersprungen werden und nur sinnvolle Questketten uebrig bleiben. Wenn du einen guten Startpunkt suchst, lade den Startguide deiner Rasse und lasse den Viewer passende Bereiche automatisch finden.\n\nFuer erfahrene Spieler verhindert dies, dass der Guide mit zu niedrigen Quests bremst, falls du schneller levelst als erwartet (zum Beispiel durch Instanzen oder Ruhend-Bonus). Du kannst festlegen, wie weit du voraus sein darfst, bevor der Guide dich durch Ueberspringen nach vorne schiebt.",
	["opt_group_mapinternal"] = "Interne Wegpunkte",
	["opt_arrowmeters"] = "Metrisches System",
	["opt_arrowmeters_desc"] = "Verwendet Meter und Kilometer statt Yards und Meilen.",
	["opt_arrowfreeze"] = "Pfeil ignoriert Klicks",
	["opt_arrowfreeze_desc"] = "Laesst den Pfeil Mausklicks ignorieren. Deaktivieren, um ihn verschieben zu koennen.",
	["opt_arrowcam"] = "Pfeil folgt Kamera",
	["opt_arrowcam_desc"] = "Zeigt Richtungen relativ zur Kameraausrichtung. Ist dies aus, orientiert sich der Pfeil an der Blickrichtung deines Charakters.\n\nHinweis: Im Kameramodus kann der Pfeil bei Click-to-Move ungenau wirken.",
	["opt_arrowcolordir"] = "Farbe nach Richtung",
	["opt_arrowcolordir_desc"] = "Faerbt den Pfeil-Edelstein gruen, wenn er in die richtige Richtung zeigt.\n\nDeaktivieren, wenn Gruen nur bei Naehe zum Ziel erscheinen soll.",
	["opt_arrowscale"] = "Pfeil-Skalierung",
	["opt_arrowscale_desc"] = "Groesse des Pfeils.",
	["opt_arrowfontsize"] = "Pfeil-Schriftgroesse",
	["opt_arrowfontsize_desc"] = "Schriftgroesse im Pfeil-Fenster.",
	["opt_minimapzoom"] = "Automatisch zoomen",
	["opt_minimapzoom_desc"] = "Erhoeht den Minikarten-Zoom automatisch, wenn ein Wegpunkt gesetzt wird, und stellt ihn danach wieder her.",
	["opt_foglight"] = "Leuchtspur anzeigen",
	["opt_foglight_desc"] = "Erzeugt einen glitzernden Pfad zum Ziel auf Weltkarte und Minikarte.",
	["opt_group_gold"] = "Gold-Guide",
	["opt_group_gold_desc"] = "Diese Einstellungen steuern die Anzeige von Goldfarming-Schritten und Ressourcenknoten.",
	["opt_gold_detectiondist"] = "Erkennungsreichweite",
	["opt_gold_detectiondist_desc"] = "Entfernung, in der naheliegende Gold-Guide-Spots erkannt und beruecksichtigt werden.",
	["opt_gold_reqmode"] = "Anforderungsmodus",
	["opt_gold_reqmode_desc"] = "Legt fest, welche Spot-Typen beruecksichtigt werden sollen.",
	["opt_gold_reqmode_all"] = "Alle",
	["opt_gold_reqmode_current"] = "Nur aktueller Guide",
	["opt_gold_reqmode_future"] = "Aktueller + zukuenftige Guides",
	["gold_missing_noguidesloaded"] = "Keine Gold-Guides geladen.",
	["gold_missing_nospotsinrange"] = "Keine passenden Gold-Spots in Reichweite gefunden.",
	["gold_header_ore"] = "Erzvorkommen:",
	["gold_header_herb"] = "Kraeuter:",
	["gold_header_skin"] = "Haeute:",
	["gold_header_drop"] = "Beute von |cffffdddd%s|r:",
	["opt_group_convenience"] = "Zusatzfunktionen",
	["opt_group_convenience_desc"] = "Verschiedene Funktionen, die nuetzlich sein koennen.",
	["opt_autoaccept"] = "Quests automatisch annehmen",
	["opt_autoaccept_desc"] = "Nimmt angebotene Quests automatisch an.",
	["opt_autoturnin"] = "Quests automatisch abgeben",
	["opt_autoturnin_desc"] = "Gibt abgeschlossene Quests automatisch ab.",
	["opt_fixblizzardautoaccept"] = "Blizzard-Auto-Annahme reparieren",
	["opt_fixblizzardautoaccept_desc"] = "Aktiviert bei aktivierter Blizzard-Option \"Quest automatisch annehmen\" dennoch die Schritte \"Nehme\" und \"Angenommen\" als abgeschlossen.",
	["opt_audiocues"] = "Audiohinweise",
	["opt_audiocues_desc"] = "Spielt Toene bei Schrittfortschritt ab.",
	["opt_analyzereps"] = "Ruf analysieren",
	["opt_analyzereps_desc"] = "Wertet deinen aktuellen Rufstand aus und markiert unpassende Rufschritte als veraltet.",
	["opt_mapcoords"] = "Kartenkoordinaten anzeigen",
	["opt_mapcoords_desc"] = "Zeigt Maus- und Spielerkoordinaten in Kartenfenstern an.",

	["haman$"] = "hamans",
	["(%a)man$"] = "%1men",

	["binding_togglewindow"] = "Guide-Fenster anzeigen",

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

