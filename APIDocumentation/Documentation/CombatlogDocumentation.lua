local Combatlog =
{
	Name = "CombatLog",
	Type = "System",
	Namespace = "CombatLog",

	Functions =
	{
		{
			Name = "CombatLogAddFilter",
			Type = "Function",
			--[[ Documentation =
			{
				"Source and destination each occupy one argument: a GUID string, a numeric object-flags mask, or nil for an unrestricted match. The fourth argument optionally filters by spell ID or spell name. Incomplete object-flags masks raise an error.",
			}, ]]

			Arguments =
			{
				{ Name = "events", Type = "string", Nilable = true },
				{ Name = "source", Type = "LuaValueVariant", Nilable = true },
				{ Name = "destination", Type = "LuaValueVariant", Nilable = true },
				{ Name = "spell", Type = "LuaValueVariant", Nilable = true },
			},
		},
		{
			Name = "CombatLogAdvanceEntry",
			Type = "Function",

			Arguments =
			{
				{ Name = "count", Type = "number", Nilable = false },
				{ Name = "ignoreFilter", Type = "bool", Nilable = true, Default = false },
			},

			Returns =
			{
				{ Name = "hasEntry", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "CombatLogClearEntries",
			Type = "Function",

		},
		{
			Name = "CombatLogGetCurrentEntry",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns the current retained combat-log entry, or no values when no entry is selected. Takes no arguments. The common fields match COMBAT_LOG_EVENT_UNFILTERED.",
			}, ]]


			Returns =
			{
				{ Name = "timestamp", Type = "number", Nilable = true, --[[ Documentation = { "Combat-log time base; do not compare directly with GetTime()." } ]] },
				{ Name = "event", Type = "string", Nilable = true },
				{ Name = "srcGUID", Type = "WOWGUID", Nilable = true },
				{ Name = "srcName", Type = "string", Nilable = true },
				{ Name = "srcFlags", Type = "number", Nilable = true },
				{ Name = "destGUID", Type = "WOWGUID", Nilable = true },
				{ Name = "destName", Type = "string", Nilable = true },
				{ Name = "destFlags", Type = "number", Nilable = true },
				{ Name = "eventArg", Type = "LuaValueVariant", Nilable = true, StrideIndex = 1, --[[ Documentation = { "Variable event-specific arguments follow the eight common fields." } ]] },
			},
		},
		{
			Name = "CombatLogGetNumEntries",
			Type = "Function",

			Arguments =
			{
				{ Name = "ignoreFilter", Type = "bool", Nilable = true, Default = false },
			},

			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CombatLogGetRetentionTime",
			Type = "Function",

			Returns =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},
		},
		{
			Name = "CombatLogResetFilter",
			Type = "Function",

		},
		{
			Name = "CombatLogSetCurrentEntry",
			Type = "Function",
			--[[ Documentation =
			{
				"Positive indices count from the oldest retained entry; zero selects the newest entry and negative indices count backwards from it.",
			}, ]]

			Arguments =
			{
				{ Name = "index", Type = "number", Nilable = false },
				{ Name = "ignoreFilter", Type = "bool", Nilable = true, Default = false },
			},

			Returns =
			{
				{ Name = "hasEntry", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "CombatLogSetRetentionTime",
			Type = "Function",

			Arguments =
			{
				{ Name = "seconds", Type = "number", Nilable = false },
			},

		},
		{
			Name = "CombatLog_Object_IsA",
			Type = "Function",

			Arguments =
			{
				{ Name = "unitFlags", Type = "number", Nilable = false },
				{ Name = "mask", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "isMatch", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "LoggingCombat",
			Type = "Function",

			Arguments =
			{
				{ Name = "toggle", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "isLogging", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "UnitGUID",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns a hexadecimal string with a 0x prefix and sixteen hexadecimal digits, or nil if no unit GUID is available. Keep the full GUID as a string to avoid numeric precision loss.",
			}, ]]

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "guid", Type = "WOWGUID", Nilable = true },
			},
		},
	},

	Events =
	{
		{
			Name = "CombatLogEvent",
			Type = "Event",
			LiteralName = "COMBAT_LOG_EVENT",
			--[[ Documentation =
			{
				"Fires with timestamp, event, srcGUID, srcName, srcFlags, destGUID, destName and destFlags, followed by the arguments for that combat-log event.",
			}, ]]

			Payload =
			{
				{ Name = "timestamp", Type = "number", Nilable = false, --[[ Documentation = { "Combat-log time base; do not compare directly with GetTime()." } ]] },
				{ Name = "event", Type = "string", Nilable = false },
				{ Name = "srcGUID", Type = "WOWGUID", Nilable = false },
				{ Name = "srcName", Type = "string", Nilable = true },
				{ Name = "srcFlags", Type = "number", Nilable = false },
				{ Name = "destGUID", Type = "WOWGUID", Nilable = false },
				{ Name = "destName", Type = "string", Nilable = true },
				{ Name = "destFlags", Type = "number", Nilable = false },
				{ Name = "eventArg", Type = "LuaValueVariant", Nilable = true, StrideIndex = 1, --[[ Documentation = { "Variable event-specific arguments follow the eight common fields." } ]] },
			},
		},
		{
			Name = "CombatLogEventUnfiltered",
			Type = "Event",
			LiteralName = "COMBAT_LOG_EVENT_UNFILTERED",
			--[[ Documentation =
			{
				"Fires with timestamp, event, srcGUID, srcName, srcFlags, destGUID, destName and destFlags, followed by the arguments for that combat-log event.",
			}, ]]

			Payload =
			{
				{ Name = "timestamp", Type = "number", Nilable = false, --[[ Documentation = { "Combat-log time base; do not compare directly with GetTime()." } ]] },
				{ Name = "event", Type = "string", Nilable = false },
				{ Name = "srcGUID", Type = "WOWGUID", Nilable = false },
				{ Name = "srcName", Type = "string", Nilable = true },
				{ Name = "srcFlags", Type = "number", Nilable = false },
				{ Name = "destGUID", Type = "WOWGUID", Nilable = false },
				{ Name = "destName", Type = "string", Nilable = true },
				{ Name = "destFlags", Type = "number", Nilable = false },
				{ Name = "eventArg", Type = "LuaValueVariant", Nilable = true, StrideIndex = 1, --[[ Documentation = { "Variable event-specific arguments follow the eight common fields." } ]] },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Combatlog);
