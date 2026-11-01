local CooldownAPI =
{
	Name = "Cooldown",
	Type = "ScriptObject",
	-- Documentation = { "A frame that displays a clock-like sweep animation, commonly used for ability cooldowns." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "GetReverse",
			Type = "Function",


			Returns =
			{
				{ Name = "reverse", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetDrawEdge",
			Type = "Function",

			Arguments =
			{
				{ Name = "drawEdge", Type = "bool", Nilable = true, Default = true },
			},
		},
		{
			Name = "GetDrawEdge",
			Type = "Function",


			Returns =
			{
				{ Name = "drawEdge", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SetCooldown",
			Type = "Function",
			--[[ Documentation =
			{
				"Start and duration are seconds. Start uses the GetTime() time base. No modRate argument is read.",
			}, ]]

			Arguments =
			{
				{ Name = "start", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetReverse",
			Type = "Function",

			Arguments =
			{
				{ Name = "reverse", Type = "bool", Nilable = true, Default = true },
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

APIDocumentation:AddDocumentationTable(CooldownAPI);

