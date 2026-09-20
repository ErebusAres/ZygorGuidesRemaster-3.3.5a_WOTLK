// GuideBrowser.lua -- display-only translation of guide FOLDER names (titles/paths stay English: they are keys).
// Dictionary lives in Localization/GuideFolders_ptBR.lua (namespace "GuideFolders").
// The helper is a METHOD of the addon object (self:GuideFolderLabel) so no new locals/upvalues are added to the
// already huge functions of this file (Lua 5.1 limits: 200 locals, 60 upvalues).
module.exports = [
  // 1) helper
  {
    find: "local function PathIsRoot(path)\n\treturn not path or #path == 0\nend\n",
    replace:
      "local function PathIsRoot(path)\n\treturn not path or #path == 0\nend\n\n" +
      "-- pt-BR: guide folder names are translated for display only (the real titles/paths stay in English)\n" +
      "function me:GuideFolderLabel(name)\n" +
      "\tlocal names = ZygorGuidesViewer_L and ZygorGuidesViewer_L(\"GuideFolders\")\n" +
      "\treturn (names and names[name]) or name\n" +
      "end\n",
  },
  // 2) legacy picker: breadcrumb + folder rows (click handler keeps using data.label = English name)
  {
    find: "local breadcrumb = (#path > 0) and table.concat(path, \"  >  \") or LT(\"gb_root\")",
    replace:
      "local breadcrumb\n\tif #path > 0 then\n\t\tlocal shown = {}\n\t\tfor i, p in ipairs(path) do shown[i] = self:GuideFolderLabel(p) end\n" +
      "\t\tbreadcrumb = table.concat(shown, \"  >  \")\n\telse\n\t\tbreadcrumb = LT(\"gb_root\")\n\tend",
  },
  { find: "tinsert(folders, { label = name })", replace: "tinsert(folders, { label = name, disp = self:GuideFolderLabel(name) })" },
  { find: "row.text:SetText(data.isUp and \"..\" or data.label)", replace: "row.text:SetText(data.isUp and \"..\" or (data.disp or data.label))" },
  // 3) main tree rows (click handler uses data.path, untouched)
  {
    find: "if data.kind == \"folder\" then\n\t\t\t\ttext = data.label\n",
    replace: "if data.kind == \"folder\" then\n\t\t\t\ttext = self:GuideFolderLabel(data.label)\n",
  },
  // 4) details pane for a selected folder
  { find: "local label = parts[#parts] or folderPath\n", replace: "local label = self:GuideFolderLabel(parts[#parts] or folderPath)\n" },
  {
    find: "frame.detailMeta:SetText(LT(\"gb_folder_format\", folderPath))",
    replace:
      "local shownParts = {}\n\t\t\t\tfor i, p in ipairs(parts) do shownParts[i] = self:GuideFolderLabel(p) end\n" +
      "\t\t\t\tframe.detailMeta:SetText(LT(\"gb_folder_format\", table.concat(shownParts, \"\\\\\")))",
  },
  // 5) section title
  { find: "title = (#parts > 0 and parts[#parts]) or LT(\"gb_all_guides\")", replace: "title = (#parts > 0 and self:GuideFolderLabel(parts[#parts])) or LT(\"gb_all_guides\")" },
  { find: "title = (#parts > 0 and parts[#parts]) or GetCategoryLabel(category)", replace: "title = (#parts > 0 and self:GuideFolderLabel(parts[#parts])) or GetCategoryLabel(category)" },
  { find: "title = (#parts > 0 and parts[#parts]) or LT(\"gb_tab_current\")", replace: "title = (#parts > 0 and self:GuideFolderLabel(parts[#parts])) or LT(\"gb_tab_current\")" },
];
