local SecureExecutionUtility =
{
	Name = "Secure Execution Utility",
	Type = "System",
	Namespace = "Secure Execution Utility",

	Functions =
	{
		{
			Name = "InCombatLockdown",
			Type = "Function",


			Returns =
			{
				{ Name = "inLockdown", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "forceinsecure",
			Type = "Function",

		},
		{
			Name = "hooksecurefunc",
			Type = "Function",
			--[[ Documentation =
			{
				"Overloads: hooksecurefunc(functionName, hookfunc) for a global, or hooksecurefunc(table, functionName, hookfunc).",
				"The hook runs after the original function. Its return values are discarded; it does not replace the original result.",
			}, ]]

			Arguments =
			{
				{ Name = "tableOrFunctionName", Type = "LuaValueVariant", Nilable = false },
				{ Name = "functionNameOrHook", Type = "LuaValueVariant", Nilable = false },
				{ Name = "hookfunc", Type = "LuaFunctionReference", Nilable = true },
			},
		},
		{
			Name = "issecure",
			Type = "Function",


			Returns =
			{
				{ Name = "secure", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "issecurevariable",
			Type = "Function",
			--[[ Documentation =
			{
				"Overloads: issecurevariable(variableName) for a global, or issecurevariable(table, variableName).",
			}, ]]

			Arguments =
			{
				{ Name = "tableOrVariable", Type = "LuaValueVariant", Nilable = false },
				{ Name = "variable", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "secure", Type = "bool", Nilable = true },
				{ Name = "taint", Type = "string", Nilable = true },
			},
		},
		{
			Name = "newproxy",
			Type = "Function",

			Arguments =
			{
				{ Name = "boolean", Type = "bool", Nilable = true },
				{ Name = "userdata", Type = "userdata", Nilable = true },
			},

			Returns =
			{
				{ Name = "userdata", Type = "userdata", Nilable = false },
			},
		},
		{
			Name = "securecall",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts a function or the name of a global function, followed by its arguments. Calls through the registered error handler and restores the caller taint context. This does not grant an addon permission to perform protected actions.",
				"Successful calls forward all return values. This is not pcall: there is no leading success boolean.",
			}, ]]

			Arguments =
			{
				{ Name = "func", Type = "LuaValueVariant", Nilable = false },
				{ Name = "arg", Type = "LuaValueVariant", Nilable = true, --[[ Documentation = { "Variable arguments forwarded to the function." }, ]] StrideIndex = 1 },
			},

			Returns =
			{
				{ Name = "result", Type = "LuaValueVariant", Nilable = true, --[[ Documentation = { "Variable return values from the called function." }, ]] StrideIndex = 1 },
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

APIDocumentation:AddDocumentationTable(SecureExecutionUtility);
