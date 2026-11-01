local Threat =
{
	Name = "Threat",
	Type = "System",
	Namespace = "Threat",

	Functions =
	{
		{
			Name = "GetThreatStatusColor",
			Type = "Function",

			Arguments =
			{
				{ Name = "status", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false },
				{ Name = "green", Type = "number", Nilable = false },
				{ Name = "blue", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsThreatWarningEnabled",
			Type = "Function",

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitDetailedThreatSituation",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts two unit references, not separate unit-token and unit-name arguments. Returns no values when the hostile unit or threat data is unavailable. isTanking uses 1/nil.",
			}, ]]

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
				{ Name = "mob", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "isTanking", Type = "bool", Nilable = true },
				{ Name = "status", Type = "number", Nilable = true },
				{ Name = "scaledPercent", Type = "number", Nilable = true },
				{ Name = "rawPercent", Type = "number", Nilable = true },
				{ Name = "threatValue", Type = "number", Nilable = true },
			},
		},
		{
			Name = "UnitThreatSituation",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts a unit and an optional hostile-unit token. Returns no values when threat information is unavailable; absence is different from a reported status of 0.",
			}, ]]

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
				{ Name = "mob", Type = "UnitToken", Nilable = true },
			},

			Returns =
			{
				{ Name = "status", Type = "number", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "UnitThreatListUpdate",
			Type = "Event",
			LiteralName = "UNIT_THREAT_LIST_UPDATE",
		},
		{
			Name = "UnitThreatSituationUpdate",
			Type = "Event",
			LiteralName = "UNIT_THREAT_SITUATION_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Threat);
