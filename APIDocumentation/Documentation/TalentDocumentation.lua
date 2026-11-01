local Talent =
{
	Name = "Talent",
	Type = "System",
	Namespace = "Talent",

	Functions =
	{
		{
			Name = "AddPreviewTalentPoints",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "talentIndex", Type = "luaIndex", Nilable = false },
				{ Name = "points", Type = "number", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

		},
		{
			Name = "CheckTalentMasterDist",
			Type = "Function",

			Returns =
			{
				{ Name = "inRange", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ConfirmTalentWipe",
			Type = "Function",

		},
		{
			Name = "GetActiveTalentGroup",
			Type = "Function",

			Arguments =
			{
				{ Name = "isInspect", Type = "bool", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "activeTalentGroup", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetGroupPreviewTalentPointsSpent",
			Type = "Function",

			Arguments =
			{
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "pointsSpent", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumTalentGroups",
			Type = "Function",

			Arguments =
			{
				{ Name = "isInspect", Type = "bool", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "numTalentGroups", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumTalentTabs",
			Type = "Function",

			Arguments =
			{
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "numTabs", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumTalents",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "numTalents", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetPetTalentTree",
			Type = "Function",

			Returns =
			{
				{ Name = "talent", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetPreviewTalentPointsSpent",
			Type = "Function",

		},
		{
			Name = "GetTalentInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "talentIndex", Type = "luaIndex", Nilable = false },
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "iconTexture", Type = "string", Nilable = false },
				{ Name = "tier", Type = "number", Nilable = false },
				{ Name = "column", Type = "number", Nilable = false },
				{ Name = "rank", Type = "number", Nilable = false },
				{ Name = "maxRank", Type = "number", Nilable = false },
				{ Name = "isExceptional", Type = "bool", Nilable = false },
				{ Name = "meetsPrereq", Type = "bool", Nilable = false },
				{ Name = "previewRank", Type = "number", Nilable = false },
				{ Name = "meetsPreviewPrereq", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetTalentLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "talentIndex", Type = "luaIndex", Nilable = false },
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "hyperlink", Nilable = false },
			},
		},
		{
			Name = "GetTalentPrereqs",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "talentIndex", Type = "luaIndex", Nilable = false },
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "tier", Type = "number", Nilable = false },
				{ Name = "column", Type = "number", Nilable = false },
				{ Name = "isLearnable", Type = "bool", Nilable = false },
				{ Name = "isPreviewLearnable", Type = "bool", Nilable = false },
				{ Name = "...", Type = "list", Nilable = false },
			},
		},
		{
			Name = "GetTalentTabInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns the talent tab name, icon, points spent, background and preview points spent.",
				"Omitting talentGroup uses the local player active talent group. When inspecting another player, specify the intended group explicitly.",
			}, ]]

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "inspect", Type = "bool", Nilable = true, Default = false },
				{ Name = "pet", Type = "bool", Nilable = true, Default = false },
				{ Name = "talentGroup", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "icon", Type = "string", Nilable = true },
				{ Name = "pointsSpent", Type = "number", Nilable = false },
				{ Name = "background", Type = "string", Nilable = true },
				{ Name = "previewPointsSpent", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetUnspentTalentPoints",
			Type = "Function",

			Arguments =
			{
				{ Name = "inspect", Type = "bool", Nilable = false },
				{ Name = "pet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "points", Type = "number", Nilable = false },
			},
		},
		{
			Name = "LearnPreviewTalents",
			Type = "Function",

			Arguments =
			{
				{ Name = "isPet", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "LearnTalent",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "talentIndex", Type = "luaIndex", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

		},
		{
			Name = "ResetGroupPreviewTalentPoints",
			Type = "Function",

			Arguments =
			{
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

		},
		{
			Name = "ResetPreviewTalentPoints",
			Type = "Function",

			Arguments =
			{
				{ Name = "tabIndex", Type = "luaIndex", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

		},
		{
			Name = "SetActiveTalentGroup",
			Type = "Function",

			Arguments =
			{
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

		},
	},

	Events =
	{
		{
			Name = "ActiveTalentGroupChanged",
			Type = "Event",
			LiteralName = "ACTIVE_TALENT_GROUP_CHANGED",
		},
		{
			Name = "ConfirmTalentWipe",
			Type = "Event",
			LiteralName = "CONFIRM_TALENT_WIPE",
			Payload =
			{
				{ Name = "cost", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetTalentUpdate",
			Type = "Event",
			LiteralName = "PET_TALENT_UPDATE",
		},
		{
			Name = "PlayerTalentUpdate",
			Type = "Event",
			LiteralName = "PLAYER_TALENT_UPDATE",
		},
		{
			Name = "PreviewPetTalentPointsChanged",
			Type = "Event",
			LiteralName = "PREVIEW_PET_TALENT_POINTS_CHANGED",
		},
		{
			Name = "PreviewTalentPointsChanged",
			Type = "Event",
			LiteralName = "PREVIEW_TALENT_POINTS_CHANGED",
		},
		{
			Name = "TalentsInvoluntarilyReset",
			Type = "Event",
			LiteralName = "TALENTS_INVOLUNTARILY_RESET",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Talent);
