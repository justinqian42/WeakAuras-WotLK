local RecruitAFriend =
{
	Name = "Recruit Friend",
	Type = "System",
	Namespace = "Recruit Friend",

	Functions =
	{
		{
			Name = "AcceptLevelGrant",
			Type = "Function",

		},
		{
			Name = "CanGrantLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "canGrant", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CanSummonFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "unit", Type = "UnitToken", Nilable = true },
			},

			Returns =
			{
				{ Name = "canSummon", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DeclineLevelGrant",
			Type = "Function",

		},
		{
			Name = "GetSummonFriendCooldown",
			Type = "Function",


			Returns =
			{
				{ Name = "start", Type = "number", Nilable = false, --[[ Documentation = { "Seconds on the GetTime() time base." } ]] },
				{ Name = "duration", Type = "number", Nilable = false, --[[ Documentation = { "Seconds." } ]] },
				{ Name = "enabled", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GrantLevel",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},
		},
		{
			Name = "IsReferAFriendLinked",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLinked", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SummonFriend",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "unit", Type = "UnitToken", Nilable = true },
			},
		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(RecruitAFriend);
