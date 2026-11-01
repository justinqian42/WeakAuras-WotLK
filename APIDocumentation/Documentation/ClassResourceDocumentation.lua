local ClassResource =
{
	Name = "Class Resource",
	Type = "System",
	Namespace = "Class Resource",

	Functions =
	{
		{
			Name = "DestroyTotem",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

		},
		{
			Name = "GetRuneCooldown",
			Type = "Function",
			--[[ Documentation =
			{
				"Start and duration are seconds. The ready flag is a Lua boolean. A ready rune has start 0 but its returned duration can still be nonzero; use runeReady rather than testing duration == 0.",
				"Returns no values when the player object is unavailable.",
			}, ]]

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "start", Type = "number", Nilable = true },
				{ Name = "duration", Type = "number", Nilable = true },
				{ Name = "runeReady", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetRuneCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRuneType",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "runeType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTotemInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "haveTotem", Type = "bool", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "startTime", Type = "time_t", Nilable = false },
				{ Name = "duration", Type = "time_t", Nilable = false },
				{ Name = "icon", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetTotemTimeLeft",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "TargetTotem",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
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

APIDocumentation:AddDocumentationTable(ClassResource);
