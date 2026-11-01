local DebuggingAndProfiling =
{
	Name = "Debugging and Profiling",
	Type = "System",
	Namespace = "Debugging and Profiling",

	Functions =
	{
		{
			Name = "FrameXML_Debug",
			Type = "Function",

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false },
			},

		},
		{
			Name = "GetAddOnCPUUsage",
			Type = "Function",

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "index", Type = "luaIndex", Nilable = true },
			},

			Returns =
			{
				{ Name = "usage", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetAddOnMemoryUsage",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns the cached Lua memory usage attributed to an addon, in KiB. Accepts an addon name or index. Call UpdateAddOnMemoryUsage to refresh the value. Textures and other game assets are excluded.",
			}, ]]

			Arguments =
			{
				{ Name = "addon", Type = "uiAddon", Nilable = false },
			},

			Returns =
			{
				{ Name = "memory", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetEventCPUUsage",
			Type = "Function",

			Arguments =
			{
				{ Name = "event", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "usage", Type = "number", Nilable = false },
				{ Name = "numEvents", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFrameCPUUsage",
			Type = "Function",

			Arguments =
			{
				{ Name = "frame", Type = "SimpleFrame", Nilable = false },
				{ Name = "includeChildren", Type = "bool", Nilable = true, Default = true },
			},

			Returns =
			{
				{ Name = "usage", Type = "number", Nilable = false, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "calls", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFramerate",
			Type = "Function",

			Returns =
			{
				{ Name = "framerate", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetFunctionCPUUsage",
			Type = "Function",

			Arguments =
			{
				{ Name = "func", Type = "LuaFunctionReference", Nilable = false },
				{ Name = "includeSubroutines", Type = "bool", Nilable = true, Default = true },
			},

			Returns =
			{
				{ Name = "usage", Type = "number", Nilable = false, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "calls", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNetStats",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns incoming bandwidth, outgoing bandwidth and latency. Bandwidth is averaged over the time since the connection started.",
			}, ]]


			Returns =
			{
				{ Name = "bandwidthIn", Type = "number", Nilable = false, --[[ Documentation = { "KiB per second." } ]] },
				{ Name = "bandwidthOut", Type = "number", Nilable = false, --[[ Documentation = { "KiB per second." } ]] },
				{ Name = "latency", Type = "number", Nilable = false, --[[ Documentation = { "Milliseconds." } ]] },
			},
		},
		{
			Name = "GetScriptCPUUsage",
			Type = "Function",

			Returns =
			{
				{ Name = "usage", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetTaxiBenchmarkMode",
			Type = "Function",

			Returns =
			{
				{ Name = "isBenchmark", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ResetCPUUsage",
			Type = "Function",

		},
		{
			Name = "SetTaxiBenchmarkMode",
			Type = "Function",

			Arguments =
			{
				{ Name = "arg", Type = "string", Nilable = false },
			},

		},
		{
			Name = "UpdateAddOnCPUUsage",
			Type = "Function",

		},
		{
			Name = "UpdateAddOnMemoryUsage",
			Type = "Function",
			--[[ Documentation =
			{
				"Refreshes the Lua memory attribution counters read by GetAddOnMemoryUsage.",
			}, ]]

		},
		{
			Name = "debugprofilestart",
			Type = "Function",
			--[[ Documentation =
			{
				"Resets the shared profiling start counter. Other addons use the same counter; calls are not independent nested stopwatches.",
			}, ]]

		},
		{
			Name = "debugprofilestop",
			Type = "Function",
			--[[ Documentation =
			{
				"Reads elapsed milliseconds from the shared profiling counter. Reading it does not stop or reset the counter. Another call to debugprofilestart changes the baseline.",
			}, ]]


			Returns =
			{
				{ Name = "elapsed", Type = "number", Nilable = false, --[[ Documentation = { "Milliseconds." } ]] },
			},
		},
		{
			Name = "debugstack",
			Type = "Function",

			Arguments =
			{
				{ Name = "start", Type = "number", Nilable = false },
				{ Name = "countTop", Type = "number", Nilable = false },
				{ Name = "countBot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "debugstring", Type = "string", Nilable = false },
			},
		},
		{
			Name = "geterrorhandler",
			Type = "Function",

			Returns =
			{
				{ Name = "handler", Type = "function", Nilable = false },
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
			Name = "seterrorhandler",
			Type = "Function",

			Arguments =
			{
				{ Name = "errHandler", Type = "function", Nilable = false },
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

APIDocumentation:AddDocumentationTable(DebuggingAndProfiling);
