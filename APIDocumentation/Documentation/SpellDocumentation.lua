local Spell =
{
	Name = "Spell",
	Type = "System",
	Namespace = "Spell",

	Functions =
	{
		{
			Name = "CastSpell",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "bookType", Type = "string", Nilable = false },
			},

		},
		{
			Name = "CastSpellByID",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "target", Type = "string", Nilable = true },
			},

		},
		{
			Name = "CastSpellByName",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "target", Type = "string", Nilable = true },
			},

		},
		{
			Name = "CursorHasSpell",
			Type = "Function",

			Returns =
			{
				{ Name = "hasSpell", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DisableSpellAutocast",
			Type = "Function",

			Arguments =
			{
				{ Name = "spell", Type = "string", Nilable = false },
			},

		},
		{
			Name = "EnableSpellAutocast",
			Type = "Function",

			Arguments =
			{
				{ Name = "spell", Type = "string", Nilable = false },
			},

		},
		{
			Name = "GetItemSpell",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts an item ID, item name or item link. The second return value is the spell rank, not a spell ID. Both results are nil when no use spell is found.",
			}, ]]

			Arguments =
			{
				{ Name = "item", Type = "ItemInfo", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "rank", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetKnownSlotFromHighestRankSlot",
			Type = "Function",

			Arguments =
			{
				{ Name = "slot", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxRankSlot", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumSpellTabs",
			Type = "Function",

			Returns =
			{
				{ Name = "numTabs", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetQuestLogRewardSpell",
			Type = "Function",

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isTradeskillSpell", Type = "bool", Nilable = false },
				{ Name = "isSpellLearned", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetRewardSpell",
			Type = "Function",

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = false },
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "isTradeskillSpell", Type = "bool", Nilable = false },
				{ Name = "isSpellLearned", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetSpellAutocast",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "bookType", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "autocastAllowed", Type = "bool", Nilable = false },
				{ Name = "autocastEnabled", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetSpellCooldown",
			Type = "Function",
			--[[ Documentation =
			{
				"GetSpellCooldown(spellID) or GetSpellCooldown(spellName [, rank]) or GetSpellCooldown(spellBookIndex, bookType). bookType is \"spell\" or \"pet\".",
				"The direct spell-ID path requires exactly one argument; passing an additional nil argument does not select that path.",
				"Start and duration are seconds on the GetTime() time base. enabled is numeric (0 or 1), not a Lua boolean. No modRate is returned.",
			}, ]]

			Arguments =
			{
				{ Name = "spell", Type = "SpellIdentifier", Nilable = false },
				{ Name = "bookTypeOrRank", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "start", Type = "number", Nilable = true },
				{ Name = "duration", Type = "number", Nilable = true },
				{ Name = "enabled", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSpellCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "numCasts", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSpellInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"GetSpellInfo(spellID) or GetSpellInfo(spellName [, rank]) or GetSpellInfo(spellBookIndex, bookType). bookType is \"spell\" or \"pet\".",
				"The direct spell-ID path requires exactly one argument; passing an additional nil argument does not select that path.",
				"Returns no values for an unresolved spell. Cost, cast time and range can depend on the current caster.",
				"The seventh return value is cast time in milliseconds. Range values can be absent when the player or caster is unavailable.",
			}, ]]

			Arguments =
			{
				{ Name = "spell", Type = "SpellIdentifier", Nilable = false },
				{ Name = "bookTypeOrRank", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "rank", Type = "string", Nilable = true },
				{ Name = "icon", Type = "string", Nilable = true },
				{ Name = "powerCost", Type = "number", Nilable = true },
				{ Name = "isFunnel", Type = "bool", Nilable = true },
				{ Name = "powerType", Type = "number", Nilable = true },
				{ Name = "castingTime", Type = "number", Nilable = true, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "minRange", Type = "number", Nilable = true },
				{ Name = "maxRange", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetSpellLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "id", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "link", Type = "hyperlink", Nilable = false },
				{ Name = "tradeLink", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetSpellName",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "bookType", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "spellName", Type = "string", Nilable = false },
				{ Name = "subSpellName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetSpellTabInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns the tab name, texture, spellbook offset, spell count and two additional numeric values.",
				"The last two values contain an additional offset and count. Their purpose is not yet documented.",
			}, ]]

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = true },
				{ Name = "texture", Type = "string", Nilable = true },
				{ Name = "offset", Type = "number", Nilable = false },
				{ Name = "numSpells", Type = "number", Nilable = false },
				{ Name = "additionalOffset", Type = "number", Nilable = false },
				{ Name = "additionalCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetSpellTexture",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = false },
			},
		},
		{
			Name = "HasPetSpells",
			Type = "Function",

			Returns =
			{
				{ Name = "hasPetSpells", Type = "bool", Nilable = false },
				{ Name = "petType", Type = "string", Nilable = false },
			},
		},
		{
			Name = "IsAttackSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isAttack", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsAutoRepeatSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellName", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isAutoRepeat", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsConsumableSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isConsumable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsCurrentSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isCurrent", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHarmfulSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isHarmful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHelpfulSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isHarmful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsPassiveSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isPassive", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsSpellInRange",
			Type = "Function",
			--[[ Documentation =
			{
				"Overloads: IsSpellInRange(spellName, unit), IsSpellInRange(spellName, rank, unit), or IsSpellInRange(spellBookIndex, bookType, unit). There is no direct spell-ID overload.",
				"Returns 1 for in range, 0 for out of range, or nil/no values when the spell, unit or range test cannot be resolved. In Lua, 0 is truthy: compare with 1 explicitly.",
			}, ]]

			Arguments =
			{
				{ Name = "spellNameOrIndex", Type = "LuaValueVariant", Nilable = false },
				{ Name = "unitRankOrBookType", Type = "string", Nilable = false },
				{ Name = "unit", Type = "UnitToken", Nilable = true },
			},

			Returns =
			{
				{ Name = "inRange", Type = "number", Nilable = true },
			},
		},
		{
			Name = "IsSpellKnown",
			Type = "Function",

			Arguments =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "isPet", Type = "bool", Nilable = true },
			},

			Returns =
			{
				{ Name = "isKnown", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUsableSpell",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts a known spell name (optionally rank) or a spellbook index with bookType. There is no direct spell-ID overload.",
				"Returns no values if spell lookup fails. Both results use 1/nil, not Lua booleans. The first result does not establish that a selected target is in range.",
			}, ]]

			Arguments =
			{
				{ Name = "spellNameOrIndex", Type = "LuaValueVariant", Nilable = false },
				{ Name = "rankOrBookType", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "usable", Type = "bool", Nilable = true },
				{ Name = "noMana", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "PickupSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
				{ Name = "bookType", Type = "string", Nilable = false },
			},

		},
		{
			Name = "SetMultiCastSpell",
			Type = "Function",

			Arguments =
			{
				{ Name = "action", Type = "number", Nilable = false },
				{ Name = "spell", Type = "number", Nilable = false },
			},

		},
		{
			Name = "SpellCanTargetGlyph",
			Type = "Function",

			Returns =
			{
				{ Name = "canTarget", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellCanTargetItem",
			Type = "Function",

			Returns =
			{
				{ Name = "canTarget", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellCanTargetUnit",
			Type = "Function",

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "canTarget", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellHasRange",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "hasRange", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellIsTargeting",
			Type = "Function",

			Returns =
			{
				{ Name = "isTargeting", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "SpellStopCasting",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "SpellStopTargeting",
			Type = "Function",
			-- IsProtectedFunction = true,

		},
		{
			Name = "SpellTargetItem",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

		},
		{
			Name = "SpellTargetUnit",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

		},
		{
			Name = "ToggleSpellAutocast",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = true },
				{ Name = "bookType", Type = "string", Nilable = true },
				{ Name = "name", Type = "string", Nilable = true },
			},

		},
		{
			Name = "UnitCastingInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns no values if the unit is unavailable or is not currently casting.",
				"Start and end times are milliseconds on the GetTime() time base. The rank is the second return value; startTime is fifth and endTime is sixth. No spell ID is returned.",
			}, ]]

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "cstring", Nilable = true },
				{ Name = "subText", Type = "string", Nilable = true },
				{ Name = "text", Type = "string", Nilable = true },
				{ Name = "texture", Type = "string", Nilable = true },
				{ Name = "startTime", Type = "number", Nilable = true, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "endTime", Type = "number", Nilable = true, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "isTradeSkill", Type = "bool", Nilable = true },
				{ Name = "castID", Type = "number", Nilable = true, --[[ Documentation = { "Cast counter; not a spell ID." } ]] },
				{ Name = "notInterruptible", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "UnitChannelInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns no values if the unit is unavailable or is not currently channeling.",
				"Start and end times are milliseconds on the GetTime() time base. The rank is the second return value; startTime is fifth and endTime is sixth. No spell ID is returned.",
			}, ]]

			Arguments =
			{
				{ Name = "unit", Type = "UnitToken", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "cstring", Nilable = true },
				{ Name = "subText", Type = "string", Nilable = true },
				{ Name = "text", Type = "string", Nilable = true },
				{ Name = "texture", Type = "string", Nilable = true },
				{ Name = "startTime", Type = "number", Nilable = true, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "endTime", Type = "number", Nilable = true, --[[ Documentation = { "Milliseconds." } ]] },
				{ Name = "isTradeSkill", Type = "bool", Nilable = true },
				{ Name = "notInterruptible", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "IsSelectedSpell",
			Type = "Function",
		},
		{
			Name = "UpdateSpells",
			Type = "Function",
		},
	},

	Events =
	{
		{
			Name = "CurrentSpellCastChanged",
			Type = "Event",
			LiteralName = "CURRENT_SPELL_CAST_CHANGED",
		},
		{
			Name = "LearnedSpellInTab",
			Type = "Event",
			LiteralName = "LEARNED_SPELL_IN_TAB",
			Payload =
			{
				{ Name = "spellID", Type = "number", Nilable = false },
				{ Name = "tabID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "PetSpellPowerUpdate",
			Type = "Event",
			LiteralName = "PET_SPELL_POWER_UPDATE",
		},
		{
			Name = "SpellsChanged",
			Type = "Event",
			LiteralName = "SPELLS_CHANGED",
		},
		{
			Name = "SpellUpdateCooldown",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_COOLDOWN",
		},
		{
			Name = "SpellUpdateUsable",
			Type = "Event",
			LiteralName = "SPELL_UPDATE_USABLE",
		},
		{
			Name = "StartAutorepeatSpell",
			Type = "Event",
			LiteralName = "START_AUTOREPEAT_SPELL",
		},
		{
			Name = "StopAutorepeatSpell",
			Type = "Event",
			LiteralName = "STOP_AUTOREPEAT_SPELL",
		},
		{
			Name = "UnitSpellcastDelayed",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_DELAYED",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastFailed",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_FAILED",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastFailedQuiet",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_FAILED_QUIET",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastInterrupted",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_INTERRUPTED",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastInterruptible",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_INTERRUPTIBLE",
			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastNotInterruptible",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_NOT_INTERRUPTIBLE",
			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastSent",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_SENT",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and target name when a spellcast is sent.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false, --[[ Documentation = { "player" } ]] },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "target", Type = "cstring", Nilable = false, --[[ Documentation = { "Target name, or an empty string when no object target is present." } ]] },
			},
		},
		{
			Name = "UnitSpellcastStart",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_START",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastStop",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_STOP",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "UnitSpellcastSucceeded",
			Type = "Event",
			LiteralName = "UNIT_SPELLCAST_SUCCEEDED",
			--[[ Documentation =
			{
				"Fires with the unit, spell name, rank and cast counter. The cast counter identifies the cast and can wrap around.",
			}, ]]

			Payload =
			{
				{ Name = "unitID", Type = "UnitToken", Nilable = false },
				{ Name = "spell", Type = "string", Nilable = false },
				{ Name = "rank", Type = "string", Nilable = false },
				{ Name = "castID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "KnownCurrencyTypesUpdate",
			Type = "Event",
			LiteralName = "KNOWN_CURRENCY_TYPES_UPDATE",
			Payload =
			{
				{ Name = "currencyType", Type = "string", Nilable = false },
				{ Name = "count", Type = "number", Nilable = false },
			},
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Spell);
