// Options.lua -- "Idioma / Language" selector (Guides page of the options, right below "Open Guide Browser").
// The language is decided at the very start of the addon load by the state of the tiny mini-addon
// "ZygorGuidesViewerRM_PTBR" (enabled = Portugues (Brasil), disabled = English) -- see Localization/Base.lua.
// This control enables/disables that mini-addon and offers to reload the UI (needed: many texts are read at load time).
// Label/description are intentionally bilingual so the control can be found in either language.
module.exports = [
  {
    find: "\tself.options = {\n\t\ttype='group',\n\t\tname = settings_title,\n",
    replace:
      "\tStaticPopupDialogs[\"ZGV_LANGUAGE_RELOAD\"] = {\n" +
      "\t\ttext = \"Idioma / Language: %s\\n\\nRecarregar a interface agora para aplicar?\\nReload the UI now to apply?\",\n" +
      "\t\tbutton1 = YES,\n" +
      "\t\tbutton2 = NO,\n" +
      "\t\tOnAccept = function() ReloadUI() end,\n" +
      "\t\ttimeout = 0,\n" +
      "\t\twhileDead = 1,\n" +
      "\t\thideOnEscape = 1,\n" +
      "\t}\n\n" +
      "\tself.options = {\n\t\ttype='group',\n\t\tname = settings_title,\n",
  },
  {
    find: "\t\t\tsteps = {\n\t\t\t\torder=3.1,\n",
    replace:
      "\t\t\tlanguage = {\n" +
      "\t\t\t\torder = 2.35,\n" +
      "\t\t\t\ttype = \"select\",\n" +
      "\t\t\t\tname = \"Idioma / Language\",\n" +
      "\t\t\t\tdesc = \"Português (Brasil) ou English. A troca exige recarregar a interface.\\nPortuguese (Brazil) or English. Changing it requires reloading the UI.\",\n" +
      "\t\t\t\tvalues = { pt = \"Português (Brasil)\", en = \"English\" },\n" +
      "\t\t\t\twidth = \"double\",\n" +
      "\t\t\t\tget = function()\n" +
      "\t\t\t\t\tlocal name, _, _, enabled = GetAddOnInfo(\"ZygorGuidesViewerRM_PTBR\")\n" +
      "\t\t\t\t\tif not name then return ZGV_LANG_PT and \"pt\" or \"en\" end\n" +
      "\t\t\t\t\treturn enabled and \"pt\" or \"en\"\n" +
      "\t\t\t\tend,\n" +
      "\t\t\t\tset = function(_, value)\n" +
      "\t\t\t\t\tlocal pack = \"ZygorGuidesViewerRM_PTBR\"\n" +
      "\t\t\t\t\tif not GetAddOnInfo(pack) then\n" +
      "\t\t\t\t\t\tself:Print(\"Language mini-addon not found (install the ZygorGuidesViewerRM_PTBR folder) / Mini-addon de idioma não encontrado: \" .. pack)\n" +
      "\t\t\t\t\t\treturn\n" +
      "\t\t\t\t\tend\n" +
      "\t\t\t\t\tif value == \"pt\" then EnableAddOn(pack) else DisableAddOn(pack) end\n" +
      "\t\t\t\t\tif (value == \"pt\") ~= (ZGV_LANG_PT and true or false) then\n" +
      "\t\t\t\t\t\tStaticPopup_Show(\"ZGV_LANGUAGE_RELOAD\", value == \"pt\" and \"Português (Brasil)\" or \"English\")\n" +
      "\t\t\t\t\tend\n" +
      "\t\t\t\tend,\n" +
      "\t\t\t},\n" +
      "\t\t\tsteps = {\n\t\t\t\torder=3.1,\n",
  },
];
