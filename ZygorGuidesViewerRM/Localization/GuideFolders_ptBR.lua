-- Brazilian Portuguese translation of the guide menu FOLDER NAMES.
-- Display only: the guide titles/paths stay in English (they are used as keys in settings, "next", "guide", history...).
-- Key = original folder name (exactly as in the guide title). WoW proper names (zones, dungeons, holidays, professions,
-- classes, expansions) are left as they are. Folders that are not listed here are shown in English, as before.

ZygorGuidesViewer_L("GuideFolders", "enUS", function() return {} end)

ZygorGuidesViewer_L("GuideFolders", "ptBR", function() return {
	-- main categories
	["Leveling Guides"] = "Guias de Leveling",
	["Dungeon Guides"] = "Guias de Masmorras",
	["Dailies Guides"] = "Guias de Diárias",
	["Events Guides"] = "Guias de Eventos",
	["Reputation Guides"] = "Guias de Reputação",
	["Reputations Guides"] = "Guias de Reputações",
	["Profession Guides"] = "Guias de Profissões",
	["WoW Professions Guides"] = "Guias de Profissões do WoW",
	["Farming Guides"] = "Guias de Farming",
	["General Farming Guides"] = "Guias Gerais de Farming",
	["Gathering"] = "Coleta",
	["Events"] = "Eventos",
	["Professions"] = "Profissões",
	["Titles"] = "Títulos",
	["Burning Crusade Titles"] = "Títulos de Burning Crusade",
	["Achievements"] = "Conquistas",
	["Reputation"] = "Reputação",

	-- Zygor guides
	["Zygor's Alliance Leveling Guides"] = "Guias de Leveling da Alliance (Zygor)",
	["Zygor's Horde Leveling Guides"] = "Guias de Leveling da Horde (Zygor)",
	["Zygor's Alliance Dailies Guides"] = "Guias de Diárias da Alliance (Zygor)",
	["Zygor's Horde Dailies Guides"] = "Guias de Diárias da Horde (Zygor)",
	["Zygor's Alliance Achievements Guides"] = "Guias de Conquistas da Alliance (Zygor)",
	["Zygor's Horde Achievements Guides"] = "Guias de Conquistas da Horde (Zygor)",
	["Zygor's Alliance Pets & Mounts Guide"] = "Guia de Pets e Montarias da Alliance (Zygor)",
	["Zygor's Macros"] = "Macros do Zygor",

	-- community authors' guides
	["Ares' Achievement Guides"] = "Guias de Conquistas (Ares)",
	["Ares' Alliance Quest Guides"] = "Guias de Quests da Alliance (Ares)",
	["Ares' WotLK 3.3.5a Guides"] = "Guias de WotLK 3.3.5a (Ares)",
	["Ares' Fun Guides"] = "Guias Divertidos (Ares)",
	["Ares' Guide Authoring"] = "Criação de Guias (Ares)",
	["Ares' Pets & Mounts Guides"] = "Guias de Pets e Montarias (Ares)",
	["Ares' GarryOwen Dailies Guide"] = "Guia de Diárias de GarryOwen (Ares)",
	["Ares' Dev Tests"] = "Testes de Desenvolvimento (Ares)",
	["Corey's GarryOwen Dailies Guide"] = "Guia de Diárias de GarryOwen (Corey)",
	["Corey's Alliance Quest Guides"] = "Guias de Quests da Alliance (Corey)",
	["Ding80's Loremaster Alliance Guides"] = "Guias de Loremaster da Alliance (Ding80)",
	["Ding80's Alliance Leveling Guides"] = "Guias de Leveling da Alliance (Ding80)",
	["Ding80's Alliance Leveling Guides TBC solo"] = "Guias de Leveling da Alliance (Ding80) TBC solo",
	["Ding80's Alliance Leveling Guides TBC duo"] = "Guias de Leveling da Alliance (Ding80) TBC duo",
	["Ding80's Quest Instance Guides"] = "Guias de Masmorras com Quests (Ding80)",
	["Ding80's Alliance Holidays Guide Achievements"] = "Conquistas de Feriados da Alliance (Ding80)",
	["Ding80's Alliance General Achievements Guide"] = "Guia de Conquistas Gerais da Alliance (Ding80)",

	-- achievements
	["Profession Achievements"] = "Conquistas de Profissões",
	["General Achievements"] = "Conquistas Gerais",
	["Quest Achievements"] = "Conquistas de Quests",
	["Exploration Achievements"] = "Conquistas de Exploração",

	-- leveling / exploration
	["Starter Guides (1-12)"] = "Guias Iniciais (1-12)",
	["Starter Guides (1-11)"] = "Guias Iniciais (1-11)",
	["Starter Guides (1-12) & Death Knight (55-58)"] = "Guias Iniciais (1-12) e Death Knight (55-58)",
	["Class Quests"] = "Quests de Classe",
	["Boosted Characters"] = "Personagens com Boost",
	["Extra Zones"] = "Zonas Extras",
	["Explore Kalimdor"] = "Explorar Kalimdor",
	["Explore Eastern Kingdoms"] = "Explorar Eastern Kingdoms",
	["Explore Northrend"] = "Explorar Northrend",
	["Explore Outland"] = "Explorar Outland",
	["Exploration Tricks"] = "Truques de Exploração",
	["Utility Tricks"] = "Truques Utilitários",

	-- dungeons / raids
	["Dungeons & Raids"] = "Masmorras e Raids",
	["Raid Attunements"] = "Attunements de Raid",
	["Heroic Instance Keys"] = "Chaves de Instâncias Heroicas",
	["Ahn'Qiraj Gear"] = "Equipamento de Ahn'Qiraj",
	["Legendary"] = "Lendários",
	["Rare Hunts"] = "Caçadas de Rares",

	-- dailies / reputation / mounts
	["Netherdrake Mount Guide"] = "Guia da Montaria Netherdrake",
	["Crusader Title Guide (Unlocks More Dailies)"] = "Guia do Título de Crusader (Libera Mais Diárias)",
	["The Oracles/Frenzyheart Dailies"] = "Diárias dos Oracles/Frenzyheart",
	["Weekly Mount Runs"] = "Rotas Semanais de Montarias",
	["Speed Gold Runs"] = "Rotas Rápidas de Gold",

	-- professions / farming
	["Elements"] = "Elementos",
	["Specialization"] = "Especialização",
	["Dropped"] = "Dropados",

	-- holidays (event names stay in English; only the dates are translated)
	["Children's Week (May 2nd - May 9th)"] = "Children's Week (2 a 9 de maio)",
	["Brewfest (September 20th - October 6th)"] = "Brewfest (20 de setembro a 6 de outubro)",
	["Midsummer Fire Festival (June 21st - July 5th)"] = "Midsummer Fire Festival (21 de junho a 5 de julho)",
	["Noblegarden (April 4th - April 11th)"] = "Noblegarden (4 a 11 de abril)",
	["Lunar Festival (February 14th - March 6th)"] = "Lunar Festival (14 de fevereiro a 6 de março)",
	["Love is in the Air (February 7th - 20th)"] = "Love is in the Air (7 a 20 de fevereiro)",

	-- misc / development
	["Examples"] = "Exemplos",
	["Misc Dev Tests"] = "Testes Diversos de Desenvolvimento",
} end)
