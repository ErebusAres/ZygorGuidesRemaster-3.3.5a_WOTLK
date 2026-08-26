local ZGV = ZygorGuidesViewer
if not ZGV then return end
ZGV.ItemScore = ZGV.ItemScore or {}
local ItemScore = ZGV.ItemScore

ItemScore.GearFinderCraftedSources = {
	blacksmithing_wotlk_200 = {
		key = "blacksmithing_wotlk_200",
		name = "WotLK crafted blacksmithing gear",
		sourceType = "crafted",
		profession = "Blacksmithing",
		minSkill = 440,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "pre_raid",
		sourceNote = "Crafting source and skill requirement cross-checked against Warcraft Wiki and Wowhead WotLK Classic recipe/item pages.",
		items = {
			[41257] = {},
			[41383] = {},
			[41384] = {},
			[41386] = {},
			[41387] = {},
			[41388] = {},
			[41391] = {},
			[41392] = {},
			[41394] = {},
			[42435] = {},
			[42508] = {},
			[45085] = {},
		},
	},
	tailoring_wotlk_200 = {
		key = "tailoring_wotlk_200",
		name = "WotLK crafted tailoring gear",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 440,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "pre_raid",
		sourceNote = "Crafting source and skill requirement cross-checked against Warcraft Wiki and Wowhead WotLK Classic recipe/item pages.",
		items = {
			[42100] = {},
			[42101] = {},
			[42102] = {},
			[42103] = {},
			[42111] = {},
			[42113] = {},
		},
	},
	leatherworking_wotlk_200 = {
		key = "leatherworking_wotlk_200",
		name = "WotLK crafted leatherworking gear",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 440,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "pre_raid",
		sourceNote = "Crafting source and skill requirement cross-checked against Warcraft Wiki and Wowhead WotLK Classic recipe/item pages.",
		items = {
			[43461] = {},
			[43469] = {},
			[43481] = {},
			[43484] = {},
			[43495] = {},
			[43502] = {},
			[44930] = {},
			[44931] = {},
		},
	},
	engineering_wotlk_goggles = {
		key = "engineering_wotlk_goggles",
		name = "WotLK crafted engineering goggles",
		sourceType = "crafted",
		profession = "Engineering",
		minSkill = 400,
		minLevel = 72,
		expansionLevel = 2,
		bind = "bop",
		professionOnly = true,
		category = "pre_raid",
		sourceNote = "Engineering goggles are BoP and require Engineering 400 on the WotLK Classic item pages.",
		items = {
			[42549] = {},
			[42550] = {},
			[42551] = {},
			[42553] = {},
			[42554] = {},
			[42555] = {},
		},
	},
	blacksmithing_wotlk_226_245_264 = {
		key = "blacksmithing_wotlk_226_245_264",
		name = "WotLK crafted raid blacksmithing gear",
		sourceType = "crafted",
		profession = "Blacksmithing",
		minSkill = 450,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "raid",
		sourceNote = "Ulduar, Trial of the Crusader, and Icecrown crafted blacksmithing gear. Skill requirement cross-checked against Wowhead WotLK Classic profession recipe listings and Warcraft Wiki item source pages.",
		items = {
			[45551] = {},
			[45552] = {},
			[45559] = {},
			[47574] = {},
			[47575] = {},
			[47593] = {},
			[47594] = {},
			[49902] = {},
			[49903] = {},
			[49904] = {},
			[49905] = {},
			[49906] = {},
			[49907] = {},
		},
	},
	tailoring_wotlk_226_245_264 = {
		key = "tailoring_wotlk_226_245_264",
		name = "WotLK crafted raid tailoring gear",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 450,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "raid",
		sourceNote = "Ulduar, Trial of the Crusader, and Icecrown crafted tailoring gear. Skill requirement cross-checked against Wowhead WotLK Classic profession recipe listings and Warcraft Wiki item source pages.",
		items = {
			[45557] = {},
			[45558] = {},
			[45565] = {},
			[45566] = {},
			[45567] = {},
			[47585] = {},
			[47586] = {},
			[47587] = {},
			[47588] = {},
			[47603] = {},
			[47604] = {},
			[47605] = {},
			[47606] = {},
			[49890] = {},
			[49891] = {},
			[49892] = {},
			[49893] = {},
		},
	},
	leatherworking_wotlk_226_245_264 = {
		key = "leatherworking_wotlk_226_245_264",
		name = "WotLK crafted raid leatherworking gear",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 450,
		minLevel = 80,
		expansionLevel = 2,
		bind = "boe",
		category = "raid",
		sourceNote = "Ulduar, Trial of the Crusader, and Icecrown crafted leatherworking gear. Skill requirement cross-checked against Wowhead WotLK Classic profession recipe listings and Warcraft Wiki item source pages.",
		items = {
			[45553] = {},
			[45554] = {},
			[45555] = {},
			[45556] = {},
			[45562] = {},
			[45563] = {},
			[45564] = {},
			[47576] = {},
			[47577] = {},
			[47581] = {},
			[47582] = {},
			[47583] = {},
			[47584] = {},
			[47595] = {},
			[47596] = {},
			[47599] = {},
			[47600] = {},
			[47601] = {},
			[47602] = {},
			[49895] = {},
			[49897] = {},
			[49899] = {},
			[49901] = {},
		},
	},
	blacksmithing_wotlk_leveling_78 = {
		key = "blacksmithing_wotlk_leveling_78",
		name = "WotLK crafted level 78 blacksmithing gear",
		sourceType = "crafted",
		profession = "Blacksmithing",
		minSkill = 425,
		minLevel = 78,
		expansionLevel = 2,
		bind = "boe",
		category = "pvp",
		sourceNote = "Level 78 Savage and Ornate Saronite crafted sets. Skill requirement cross-checked against Warcraft Wiki source pages.",
		items = {
			[41347] = {},
			[41348] = {},
			[41349] = {},
			[41350] = {},
			[41351] = {},
			[41352] = {},
			[41353] = {},
			[41354] = {},
			[42723] = {},
			[42724] = {},
			[42725] = {},
			[42726] = {},
			[42727] = {},
			[42728] = {},
			[42729] = {},
			[42730] = {},
		},
	},
	tailoring_wotlk_leveling_78 = {
		key = "tailoring_wotlk_leveling_78",
		name = "WotLK crafted level 78 tailoring gear",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 415,
		minLevel = 78,
		expansionLevel = 2,
		bind = "boe",
		category = "pvp",
		sourceNote = "Level 78 Frostsavage crafted set. Skill requirements cross-checked against Warcraft Wiki source pages.",
		items = {
			[41516] = { minSkill = 420 },
			[43969] = { minSkill = 415 },
			[43970] = { minSkill = 415 },
			[43971] = { minSkill = 420 },
			[43972] = { minSkill = 420 },
			[43973] = { minSkill = 415 },
			[43974] = { minSkill = 415 },
			[43975] = { minSkill = 420 },
		},
	},
	leatherworking_wotlk_leveling_78 = {
		key = "leatherworking_wotlk_leveling_78",
		name = "WotLK crafted level 78 leatherworking gear",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 420,
		minLevel = 78,
		expansionLevel = 2,
		bind = "boe",
		category = "pvp",
		sourceNote = "Level 78 Eviscerator, Overcast, Swiftarrow, and Stormhide crafted sets. Skill requirements cross-checked against Wowhead WotLK Classic pattern pages.",
		items = {
			[43260] = { minSkill = 420 },
			[43261] = { minSkill = 420 },
			[43262] = { minSkill = 420 },
			[43263] = { minSkill = 420 },
			[43264] = { minSkill = 420 },
			[43265] = { minSkill = 425 },
			[43266] = { minSkill = 425 },
			[43271] = { minSkill = 420 },
			[43273] = { minSkill = 425 },
			[43433] = { minSkill = 420 },
			[43434] = { minSkill = 420 },
			[43435] = { minSkill = 420 },
			[43436] = { minSkill = 425 },
			[43437] = { minSkill = 425 },
			[43438] = { minSkill = 420 },
			[43439] = { minSkill = 425 },
			[43442] = { minSkill = 425 },
			[43443] = { minSkill = 425 },
			[43444] = { minSkill = 420 },
			[43445] = { minSkill = 420 },
			[43446] = { minSkill = 425 },
			[43447] = { minSkill = 420 },
			[43448] = { minSkill = 420 },
			[43449] = { minSkill = 420 },
			[43450] = { minSkill = 425 },
			[43451] = { minSkill = 425 },
			[43452] = { minSkill = 420 },
			[43453] = { minSkill = 420 },
			[43454] = { minSkill = 425 },
			[43455] = { minSkill = 420 },
			[43456] = { minSkill = 420 },
			[43457] = { minSkill = 420 },
		},
	},
	blacksmithing_tbc_leveling_67_70 = {
		key = "blacksmithing_tbc_leveling_67_70",
		name = "TBC crafted level 67-70 blacksmithing gear",
		sourceType = "crafted",
		profession = "Blacksmithing",
		minSkill = 350,
		minLevel = 67,
		expansionLevel = 1,
		bind = "boe",
		category = "leveling",
		sourceNote = "Targeted non-specialization TBC crafted blacksmithing gear for level 67-70 characters. Specialization-locked recipes are intentionally excluded for now.",
		items = {
			[23517] = { minLevel = 70 },
			[23518] = { minLevel = 70 },
			[23519] = { minLevel = 70 },
			[23537] = { minLevel = 70 },
			[23540] = { minLevel = 70 },
			[23541] = { minLevel = 70 },
			[23543] = { minLevel = 70 },
			[23544] = { minLevel = 70 },
		},
	},
	tailoring_tbc_leveling_70 = {
		key = "tailoring_tbc_leveling_70",
		name = "TBC crafted level 70 tailoring gear",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 350,
		minLevel = 70,
		expansionLevel = 1,
		bind = "boe",
		category = "leveling",
		sourceNote = "Targeted non-specialization TBC crafted tailoring gear for level 70 characters. Spellfire, Frozen Shadoweave, and Primal Mooncloth specialization-locked sets are intentionally excluded for now.",
		items = {
			[24261] = {},
			[24262] = {},
			[24263] = {},
			[24264] = {},
			[24266] = {},
			[24267] = {},
		},
	},
	leatherworking_tbc_leveling_67_70 = {
		key = "leatherworking_tbc_leveling_67_70",
		name = "TBC crafted level 67-70 leatherworking gear",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 350,
		minLevel = 67,
		expansionLevel = 1,
		bind = "boe",
		category = "leveling",
		sourceNote = "Targeted non-specialization TBC crafted leatherworking gear for level 67-70 characters. Leatherworking specialization sets are intentionally excluded for now.",
		items = {
			[25685] = {},
			[25686] = { minLevel = 69 },
			[25687] = { minLevel = 69 },
			[25689] = { minLevel = 70 },
			[25690] = { minLevel = 70 },
			[25691] = { minLevel = 69 },
			[25692] = {},
			[25693] = { minLevel = 69 },
			[25694] = {},
		},
	},
	tailoring_tbc_spellfire = {
		key = "tailoring_tbc_spellfire",
		name = "TBC Spellfire tailoring set",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 350,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "spellfire_tailoring",
		specializationName = "Spellfire",
		category = "leveling",
		sourceNote = "TBC Spellfire Tailoring specialization set. Specialization spell ID 26797 sourced from Wowhead WotLK Classic.",
		items = {
			[21846] = {},
			[21847] = {},
			[21848] = {},
		},
	},
	tailoring_tbc_shadoweave = {
		key = "tailoring_tbc_shadoweave",
		name = "TBC Frozen Shadoweave tailoring set",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 350,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "shadoweave_tailoring",
		specializationName = "Shadoweave",
		category = "leveling",
		sourceNote = "TBC Shadoweave Tailoring specialization set. Specialization spell ID 26801 sourced from Wowhead.",
		items = {
			[21869] = {},
			[21870] = {},
			[21871] = {},
		},
	},
	tailoring_tbc_mooncloth = {
		key = "tailoring_tbc_mooncloth",
		name = "TBC Primal Mooncloth tailoring set",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 350,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "mooncloth_tailoring",
		specializationName = "Mooncloth",
		category = "leveling",
		sourceNote = "TBC Mooncloth Tailoring specialization set. Specialization spell ID 26798 sourced from Wowhead WotLK Classic.",
		items = {
			[21873] = {},
			[21874] = {},
			[21875] = {},
		},
	},
	leatherworking_tbc_dragonscale = {
		key = "leatherworking_tbc_dragonscale",
		name = "TBC Dragonscale leatherworking set",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 375,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "dragonscale_leatherworking",
		specializationName = "Dragonscale",
		category = "leveling",
		sourceNote = "TBC Dragonscale Leatherworking specialization set. Specialization spell ID 10656 sourced from Wowhead WotLK Classic.",
		items = {
			[29515] = {},
			[29516] = {},
			[29517] = {},
		},
	},
	leatherworking_tbc_elemental = {
		key = "leatherworking_tbc_elemental",
		name = "TBC Elemental leatherworking sets",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 375,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "elemental_leatherworking",
		specializationName = "Elemental",
		category = "leveling",
		sourceNote = "TBC Elemental Leatherworking specialization sets. Specialization spell ID 10658 sourced from Wowhead Classic.",
		items = {
			[29519] = {},
			[29520] = {},
			[29521] = {},
			[29525] = {},
			[29526] = {},
			[29527] = {},
		},
	},
	leatherworking_tbc_tribal = {
		key = "leatherworking_tbc_tribal",
		name = "TBC Tribal leatherworking set",
		sourceType = "crafted",
		profession = "Leatherworking",
		minSkill = 375,
		minLevel = 70,
		expansionLevel = 1,
		bind = "bop",
		professionOnly = true,
		specialization = "tribal_leatherworking",
		specializationName = "Tribal",
		category = "leveling",
		sourceNote = "TBC Tribal Leatherworking specialization set. Specialization spell ID 10660 sourced from Wowhead WotLK Classic.",
		items = {
			[29522] = {},
			[29523] = {},
			[29524] = {},
		},
	},
	tailoring_classic_leveling_5_60 = {
		key = "tailoring_classic_leveling_5_60",
		name = "Classic crafted level 5-60 tailoring gear",
		sourceType = "crafted",
		profession = "Tailoring",
		minSkill = 30,
		minLevel = 1,
		expansionLevel = 0,
		bind = "boe",
		category = "leveling",
		sourceNote = "Classic Tailoring dataset contributed by SnaxxNZ from Wowhead WotLK data; item levels, recipe skills, recipe spell IDs, and bindings cross-checked against the addon item database and AtlasLoot 3.3.5 crafting data.",
		items = {
			[2572] = { minLevel = 5, minSkill = 40, recipeSpellID = 2389 }, -- Red Linen Robe
			[4307] = { minLevel = 5, minSkill = 35, recipeSpellID = 3840 }, -- Heavy Linen Gloves
			[6241] = { minLevel = 5, minSkill = 30, recipeSpellID = 7624 }, -- White Linen Robe
			[6238] = { minLevel = 5, minSkill = 30, recipeSpellID = 7623 }, -- Brown Linen Robe
			[4343] = { minLevel = 5, minSkill = 30, recipeSpellID = 3914 }, -- Brown Linen Pants
			[4308] = { minLevel = 7, minSkill = 60, recipeSpellID = 3841 }, -- Green Linen Bracers
			[2580] = { minLevel = 7, minSkill = 60, recipeSpellID = 2397 }, -- Reinforced Linen Cape
			[6239] = { minLevel = 7, minSkill = 55, recipeSpellID = 7629 }, -- Red Linen Vest
			[6240] = { minLevel = 7, minSkill = 55, recipeSpellID = 7630 }, -- Blue Linen Vest
			[2569] = { minLevel = 8, minSkill = 65, recipeSpellID = 2386 }, -- Linen Boots
			[4309] = { minLevel = 9, minSkill = 70, recipeSpellID = 3842 }, -- Handstitched Linen Britches
			[2578] = { minLevel = 9, minSkill = 70, recipeSpellID = 2395 }, -- Barbaric Linen Vest
			[6242] = { minLevel = 9, minSkill = 70, recipeSpellID = 7633 }, -- Blue Linen Robe
			[10047] = { minLevel = 10, minSkill = 75, recipeSpellID = 12046 }, -- Simple Kilt
			[4312] = { minLevel = 11, minSkill = 80, recipeSpellID = 3845 }, -- Soft-soled Linen Boots
			[2582] = { minLevel = 12, minSkill = 85, recipeSpellID = 2399 }, -- Green Woolen Vest
			[4310] = { minLevel = 12, minSkill = 85, recipeSpellID = 3843 }, -- Heavy Woolen Gloves
			[2583] = { minLevel = 14, minSkill = 95, recipeSpellID = 2401 }, -- Woolen Boots
			[5542] = { minLevel = 14, minSkill = 90, recipeSpellID = 6521 }, -- Pearl-clasped Cloak
			[6263] = { minLevel = 15, minSkill = 100, recipeSpellID = 7639 }, -- Blue Overalls
			[4313] = { minLevel = 15, minSkill = 95, recipeSpellID = 3847 }, -- Red Woolen Boots
			[2585] = { minLevel = 16, minSkill = 105, recipeSpellID = 2403 }, -- Gray Woolen Robe
			[4311] = { minLevel = 16, minSkill = 100, recipeSpellID = 3844 }, -- Heavy Woolen Cloak
			[4314] = { minLevel = 17, minSkill = 110, recipeSpellID = 3848 }, -- Double-stitched Woolen Shoulders
			[4316] = { minLevel = 17, minSkill = 110, recipeSpellID = 3850 }, -- Heavy Woolen Pants
			[6264] = { minLevel = 18, minSkill = 115, recipeSpellID = 7643 }, -- Greater Adept's Robe
			[45626] = { minLevel = 19, minSkill = 125, recipeSpellID = 63742 }, -- Spidersilk Drape
			[4320] = { minLevel = 19, minSkill = 125, recipeSpellID = 3855 }, -- Spidersilk Boots
			[4315] = { minLevel = 19, minSkill = 120, recipeSpellID = 3849 }, -- Reinforced Woolen Shoulders
			[10048] = { minLevel = 14, minSkill = 120, recipeSpellID = 12047 }, -- Colorful Kilt
			[4317] = { minLevel = 20, minSkill = 125, recipeSpellID = 3851 }, -- Phoenix Pants
			[4331] = { minLevel = 20, minSkill = 125, recipeSpellID = 3868 }, -- Phoenix Gloves
			[4318] = { minLevel = 21, minSkill = 130, recipeSpellID = 3852 }, -- Gloves of Meditation
			[5766] = { minLevel = 22, minSkill = 135, recipeSpellID = 6690 }, -- Lesser Wizard's Robe
			[7046] = { minLevel = 23, minSkill = 140, recipeSpellID = 8758 }, -- Azure Silk Pants
			[4321] = { minLevel = 23, minSkill = 140, recipeSpellID = 3856 }, -- Spider Silk Slippers
			[7048] = { minLevel = 24, minSkill = 145, recipeSpellID = 8760 }, -- Azure Silk Hood
			[7047] = { minLevel = 24, minSkill = 145, recipeSpellID = 8780 }, -- Hands of Darkness
			[4319] = { minLevel = 24, minSkill = 145, recipeSpellID = 3854 }, -- Azure Silk Gloves
			[5770] = { minLevel = 25, minSkill = 150, recipeSpellID = 6692 }, -- Robes of Arcana
			[7049] = { minLevel = 25, minSkill = 150, recipeSpellID = 8782 }, -- Truefaith Gloves
			[4324] = { minLevel = 25, minSkill = 150, recipeSpellID = 3859 }, -- Azure Silk Vest
			[7050] = { minLevel = 27, minSkill = 160, recipeSpellID = 8762 }, -- Silk Headband
			[7065] = { minLevel = 28, minSkill = 165, recipeSpellID = 8784 }, -- Green Silk Armor
			[4322] = { minLevel = 28, minSkill = 165, recipeSpellID = 3857 }, -- Enchanter's Cowl
			[4323] = { minLevel = 29, minSkill = 170, recipeSpellID = 3858 }, -- Shadow Hood
			[7051] = { minLevel = 29, minSkill = 170, recipeSpellID = 8764 }, -- Earthen Vest
			[7058] = { minLevel = 30, minSkill = 185, recipeSpellID = 8791 }, -- Crimson Silk Vest
			[7053] = { minLevel = 30, minSkill = 175, recipeSpellID = 8786 }, -- Azure Silk Cloak
			[7052] = { minLevel = 30, minSkill = 175, recipeSpellID = 8766 }, -- Azure Silk Belt
			[4325] = { minLevel = 30, minSkill = 175, recipeSpellID = 3860 }, -- Boots of the Enchanter
			[7055] = { minLevel = 30, minSkill = 175, recipeSpellID = 8772 }, -- Crimson Silk Belt
			[7057] = { minLevel = 31, minSkill = 180, recipeSpellID = 8774 }, -- Green Silken Shoulders
			[4328] = { minLevel = 31, minSkill = 180, recipeSpellID = 3863 }, -- Spider Belt
			[7056] = { minLevel = 31, minSkill = 180, recipeSpellID = 8789 }, -- Crimson Silk Cloak
			[4326] = { minLevel = 32, minSkill = 185, recipeSpellID = 3861 }, -- Long Silken Cloak
			[7059] = { minLevel = 33, minSkill = 190, recipeSpellID = 8793 }, -- Crimson Silk Shoulders
			[7054] = { minLevel = 33, minSkill = 190, recipeSpellID = 8770, bind = "bop", professionOnly = true }, -- Robe of Power
			[7060] = { minLevel = 33, minSkill = 190, recipeSpellID = 8795 }, -- Azure Shoulders
			[7062] = { minLevel = 34, minSkill = 195, recipeSpellID = 8799 }, -- Crimson Silk Pantaloons
			[7061] = { minLevel = 34, minSkill = 195, recipeSpellID = 8797 }, -- Earthen Silk Belt
			[4327] = { minLevel = 35, minSkill = 200, recipeSpellID = 3862 }, -- Icy Cloak
			[4329] = { minLevel = 35, minSkill = 200, recipeSpellID = 3864 }, -- Star Belt
			[9999] = { minLevel = 36, minSkill = 205, recipeSpellID = 12049 }, -- Black Mageweave Leggings
			[9998] = { minLevel = 36, minSkill = 205, recipeSpellID = 12048 }, -- Black Mageweave Vest
			[7063] = { minLevel = 36, minSkill = 205, recipeSpellID = 8802 }, -- Crimson Silk Robe
			[7064] = { minLevel = 37, minSkill = 210, recipeSpellID = 8804 }, -- Crimson Silk Gloves
			[10001] = { minLevel = 37, minSkill = 210, recipeSpellID = 12050 }, -- Black Mageweave Robe
			[10002] = { minLevel = 37, minSkill = 210, recipeSpellID = 12052 }, -- Shadoweave Pants
			[10008] = { minLevel = 38, minSkill = 215, recipeSpellID = 12059 }, -- White Bandit Mask
			[10003] = { minLevel = 38, minSkill = 215, recipeSpellID = 12053 }, -- Black Mageweave Gloves
			[10009] = { minLevel = 38, minSkill = 215, recipeSpellID = 12060 }, -- Red Mageweave Pants
			[10004] = { minLevel = 38, minSkill = 215, recipeSpellID = 12055 }, -- Shadoweave Robe
			[10007] = { minLevel = 38, minSkill = 215, recipeSpellID = 12056 }, -- Red Mageweave Vest
			[10042] = { minLevel = 40, minSkill = 225, recipeSpellID = 12069 }, -- Cindercloth Robe
			[10019] = { minLevel = 40, minSkill = 225, recipeSpellID = 12067 }, -- Dreamweave Gloves
			[10021] = { minLevel = 40, minSkill = 225, recipeSpellID = 12070 }, -- Dreamweave Vest
			[10018] = { minLevel = 40, minSkill = 225, recipeSpellID = 12066 }, -- Red Mageweave Gloves
			[10023] = { minLevel = 40, minSkill = 225, recipeSpellID = 12071 }, -- Shadoweave Gloves
			[10026] = { minLevel = 41, minSkill = 230, recipeSpellID = 12073 }, -- Black Mageweave Boots
			[10027] = { minLevel = 41, minSkill = 230, recipeSpellID = 12074 }, -- Black Mageweave Shoulders
			[10024] = { minLevel = 41, minSkill = 230, recipeSpellID = 12072 }, -- Black Mageweave Headband
			[10028] = { minLevel = 42, minSkill = 235, recipeSpellID = 12076 }, -- Shadoweave Shoulders
			[10029] = { minLevel = 42, minSkill = 235, recipeSpellID = 12078 }, -- Red Mageweave Shoulders
			[10033] = { minLevel = 43, minSkill = 240, recipeSpellID = 12084 }, -- Red Mageweave Headband
			[10030] = { minLevel = 43, minSkill = 240, recipeSpellID = 12081 }, -- Admiral's Hat
			[10031] = { minLevel = 43, minSkill = 240, recipeSpellID = 12082 }, -- Shadoweave Boots
			[10044] = { minLevel = 44, minSkill = 245, recipeSpellID = 12088 }, -- Cindercloth Boots
			[10025] = { minLevel = 44, minSkill = 245, recipeSpellID = 12086 }, -- Shadoweave Mask
			[10041] = { minLevel = 45, minSkill = 250, recipeSpellID = 12092 }, -- Dreamweave Circlet
			[13856] = { minLevel = 46, minSkill = 255, recipeSpellID = 18402 }, -- Runecloth Belt
			[13869] = { minLevel = 46, minSkill = 255, recipeSpellID = 18403 }, -- Frostweave Tunic
			[13868] = { minLevel = 46, minSkill = 255, recipeSpellID = 18404 }, -- Frostweave Robe
			[14042] = { minLevel = 47, minSkill = 260, recipeSpellID = 18408 }, -- Cindercloth Vest
			[13858] = { minLevel = 47, minSkill = 260, recipeSpellID = 18406 }, -- Runecloth Robe
			[13857] = { minLevel = 47, minSkill = 260, recipeSpellID = 18407 }, -- Runecloth Tunic
			[13870] = { minLevel = 47, minSkill = 265, recipeSpellID = 18411 }, -- Frostweave Gloves
			[13860] = { minLevel = 48, minSkill = 265, recipeSpellID = 18409 }, -- Runecloth Cloak
			[14143] = { minLevel = 48, minSkill = 265, recipeSpellID = 18410 }, -- Ghostweave Belt
			[14043] = { minLevel = 49, minSkill = 270, recipeSpellID = 18412 }, -- Cindercloth Gloves
			[14142] = { minLevel = 49, minSkill = 270, recipeSpellID = 18413 }, -- Ghostweave Gloves
			[14101] = { minLevel = 49, minSkill = 270, recipeSpellID = 18415 }, -- Brightcloth Gloves
			[14100] = { minLevel = 49, minSkill = 270, recipeSpellID = 18414 }, -- Brightcloth Robe
			[14044] = { minLevel = 50, minSkill = 275, recipeSpellID = 18418 }, -- Cindercloth Cloak
			[13863] = { minLevel = 50, minSkill = 275, recipeSpellID = 18417 }, -- Runecloth Gloves
			[14132] = { minLevel = 50, minSkill = 275, recipeSpellID = 18421 }, -- Wizardweave Leggings
			[14103] = { minLevel = 50, minSkill = 275, recipeSpellID = 18420 }, -- Brightcloth Cloak
			[14107] = { minLevel = 50, minSkill = 275, recipeSpellID = 18419 }, -- Felcloth Pants
			[14134] = { minLevel = 50, minSkill = 275, recipeSpellID = 18422 }, -- Cloak of Fire
			[14141] = { minLevel = 50, minSkill = 275, recipeSpellID = 18416 }, -- Ghostweave Vest
			[14045] = { minLevel = 51, minSkill = 280, recipeSpellID = 18434 }, -- Cindercloth Pants
			[15802] = { minLevel = 51, minSkill = 290, recipeSpellID = 19435 }, -- Mooncloth Boots
			[13864] = { minLevel = 51, minSkill = 280, recipeSpellID = 18423 }, -- Runecloth Boots
			[13871] = { minLevel = 51, minSkill = 280, recipeSpellID = 18424 }, -- Frostweave Pants
			[14136] = { minLevel = 52, minSkill = 285, recipeSpellID = 18436 }, -- Robe of Winter Night
			[14108] = { minLevel = 52, minSkill = 285, recipeSpellID = 18437 }, -- Felcloth Boots
			[13865] = { minLevel = 52, minSkill = 285, recipeSpellID = 18438 }, -- Runecloth Pants
			[14111] = { minLevel = 53, minSkill = 290, recipeSpellID = 18442 }, -- Felcloth Hood
			[19047] = { minLevel = 53, minSkill = 290, recipeSpellID = 23662 }, -- Wisdom of the Timbermaw
			[14104] = { minLevel = 53, minSkill = 290, recipeSpellID = 18439 }, -- Brightcloth Pants
			[14144] = { minLevel = 53, minSkill = 290, recipeSpellID = 18441 }, -- Ghostweave Pants
			[14137] = { minLevel = 53, minSkill = 290, recipeSpellID = 18440 }, -- Mooncloth Leggings
			[19056] = { minLevel = 53, minSkill = 290, recipeSpellID = 23664 }, -- Argent Boots
			[13866] = { minLevel = 54, minSkill = 295, recipeSpellID = 18444 }, -- Runecloth Headband
			[14138] = { minLevel = 55, minSkill = 300, recipeSpellID = 18447 }, -- Mooncloth Vest
			[14128] = { minLevel = 55, minSkill = 300, recipeSpellID = 18446 }, -- Wizardweave Robe
			[13867] = { minLevel = 56, minSkill = 300, recipeSpellID = 18449 }, -- Runecloth Shoulders
			[14139] = { minLevel = 56, minSkill = 300, recipeSpellID = 18448 }, -- Mooncloth Shoulders
			[16980] = { minLevel = 56, minSkill = 300, recipeSpellID = 20848 }, -- Flarecore Mantle
			[18486] = { minLevel = 56, minSkill = 300, recipeSpellID = 22902 }, -- Mooncloth Robe
			[14106] = { minLevel = 56, minSkill = 300, recipeSpellID = 18451 }, -- Felcloth Robe
			[14130] = { minLevel = 56, minSkill = 300, recipeSpellID = 18450 }, -- Wizardweave Turban
			[14140] = { minLevel = 57, minSkill = 300, recipeSpellID = 18452 }, -- Mooncloth Circlet
			[14154] = { minLevel = 57, minSkill = 300, recipeSpellID = 18456, bind = "bop", professionOnly = true }, -- Truefaith Vestments
			[16979] = { minLevel = 57, minSkill = 300, recipeSpellID = 20849 }, -- Flarecore Gloves
			[14112] = { minLevel = 57, minSkill = 300, recipeSpellID = 18453 }, -- Felcloth Shoulders
			[18408] = { minLevel = 57, minSkill = 300, recipeSpellID = 22868 }, -- Inferno Gloves
			[18409] = { minLevel = 57, minSkill = 300, recipeSpellID = 22869 }, -- Mooncloth Gloves
			[14152] = { minLevel = 57, minSkill = 300, recipeSpellID = 18457, bind = "bop", professionOnly = true }, -- Robe of the Archmage
			[14153] = { minLevel = 57, minSkill = 300, recipeSpellID = 18458, bind = "bop", professionOnly = true }, -- Robe of the Void
			[18405] = { minLevel = 57, minSkill = 300, recipeSpellID = 22866 }, -- Belt of the Archmage
			[18407] = { minLevel = 57, minSkill = 300, recipeSpellID = 22867 }, -- Felcloth Gloves
			[14146] = { minLevel = 57, minSkill = 300, recipeSpellID = 18454 }, -- Gloves of Spell Mastery
			[18413] = { minLevel = 57, minSkill = 300, recipeSpellID = 22870 }, -- Cloak of Warding
			[20537] = { minLevel = 58, minSkill = 300, recipeSpellID = 24903 }, -- Runed Stygian Boots
			[20538] = { minLevel = 58, minSkill = 300, recipeSpellID = 24901 }, -- Runed Stygian Leggings
			[20539] = { minLevel = 58, minSkill = 300, recipeSpellID = 24902 }, -- Runed Stygian Belt
			[18263] = { minLevel = 60, minSkill = 300, recipeSpellID = 22759 }, -- Flarecore Wraps
			[19050] = { minLevel = 59, minSkill = 300, recipeSpellID = 23663 }, -- Mantle of the Timbermaw
			[19059] = { minLevel = 59, minSkill = 300, recipeSpellID = 23665 }, -- Argent Shoulders
			[19683] = { minLevel = 60, minSkill = 300, recipeSpellID = 24092 }, -- Bloodvine Leggings
			[19684] = { minLevel = 60, minSkill = 300, recipeSpellID = 24093 }, -- Bloodvine Boots
			[19682] = { minLevel = 60, minSkill = 300, recipeSpellID = 24091 }, -- Bloodvine Vest
			[19156] = { minLevel = 60, minSkill = 300, recipeSpellID = 23666 }, -- Flarecore Robe
			[19165] = { minLevel = 60, minSkill = 300, recipeSpellID = 23667 }, -- Flarecore Leggings
			[22757] = { minLevel = 60, minSkill = 300, recipeSpellID = 28481 }, -- Sylvan Crown
			[22660] = { minLevel = 60, minSkill = 300, recipeSpellID = 28210 }, -- Gaea's Embrace
			[22758] = { minLevel = 60, minSkill = 300, recipeSpellID = 28482 }, -- Sylvan Shoulders
			[22756] = { minLevel = 60, minSkill = 300, recipeSpellID = 28480 }, -- Sylvan Vest
			[22658] = { minLevel = 60, minSkill = 300, recipeSpellID = 28208 }, -- Glacial Cloak
			[22654] = { minLevel = 60, minSkill = 300, recipeSpellID = 28205 }, -- Glacial Gloves
			[22652] = { minLevel = 60, minSkill = 300, recipeSpellID = 28207 }, -- Glacial Vest
			[22655] = { minLevel = 60, minSkill = 300, recipeSpellID = 28209 }, -- Glacial Wrists
		},
	},
}
