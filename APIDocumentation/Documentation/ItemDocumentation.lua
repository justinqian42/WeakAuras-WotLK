local Item =
{
	Name = "Item",
	Type = "System",
	Namespace = "Item",

	Functions =
	{
		{
			Name = "BindEnchant",
			Type = "Function",

		},
		{
			Name = "CancelPendingEquip",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "ConfirmBindOnUse",
			Type = "Function",

		},
		{
			Name = "CursorHasItem",
			Type = "Function",

			Returns =
			{
				{ Name = "hasItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "DeleteCursorItem",
			Type = "Function",

		},
		{
			Name = "EndBoundTradeable",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},

		},
		{
			Name = "EndRefund",
			Type = "Function",

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},

		},
		{
			Name = "EquipItemByName",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

		},
		{
			Name = "EquipPendingItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "GetItemCooldown",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts one item ID, item name or item link. Start and duration are seconds on the GetTime() time base. enabled is numeric, not a Lua boolean.",
			}, ]]

			Arguments =
			{
				{ Name = "item", Type = "ItemInfo", Nilable = false },
			},

			Returns =
			{
				{ Name = "start", Type = "number", Nilable = false },
				{ Name = "duration", Type = "number", Nilable = false },
				{ Name = "enabled", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemCount",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemId", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "includeBank", Type = "bool", Nilable = true },
				{ Name = "includeCharges", Type = "bool", Nilable = true },
			},

			Returns =
			{
				{ Name = "itemCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemFamily",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "bagType", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetItemGem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "index", Type = "luaIndex", Nilable = true },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "link", Type = "hyperlink", Nilable = false },
			},
		},
		{
			Name = "GetItemIcon",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetItemInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts one item ID, item name or item link. Returns no values if the item record is not available in the client cache; a missing result does not prove that the item ID is invalid.",
				"Returns eleven values, ending with the item sell price.",
			}, ]]

			Arguments =
			{
				{ Name = "item", Type = "ItemInfo", Nilable = false },
			},

			Returns =
			{
				{ Name = "itemName", Type = "cstring", Nilable = true },
				{ Name = "itemLink", Type = "cstring", Nilable = true },
				{ Name = "itemRarity", Type = "ItemQuality", Nilable = true },
				{ Name = "itemLevel", Type = "number", Nilable = true },
				{ Name = "itemMinLevel", Type = "number", Nilable = true },
				{ Name = "itemType", Type = "cstring", Nilable = true },
				{ Name = "itemSubType", Type = "cstring", Nilable = true },
				{ Name = "itemStackCount", Type = "number", Nilable = true },
				{ Name = "itemEquipLoc", Type = "cstring", Nilable = true },
				{ Name = "itemTexture", Type = "string", Nilable = true },
				{ Name = "itemSellPrice", Type = "number", Nilable = true },
			},
		},
		{
			Name = "GetItemQualityColor",
			Type = "Function",

			Arguments =
			{
				{ Name = "quality", Type = "itemQuality", Nilable = false },
			},

			Returns =
			{
				{ Name = "redComponent", Type = "number", Nilable = false },
				{ Name = "greenComponent", Type = "number", Nilable = false },
				{ Name = "blueComponent", Type = "number", Nilable = false },
				{ Name = "hexColor", Type = "string", Nilable = false },
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
			Name = "GetItemStatDelta",
			Type = "Function",

			Arguments =
			{
				{ Name = "item1Link", Type = "string", Nilable = false },
				{ Name = "item2Link", Type = "string", Nilable = false },
				{ Name = "returnTable", Type = "table", Nilable = true },
			},

			Returns =
			{
				{ Name = "statTable", Type = "table", Nilable = false },
			},
		},
		{
			Name = "GetItemStats",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemLink", Type = "string", Nilable = false },
				{ Name = "returnTable", Type = "table", Nilable = true },
			},

			Returns =
			{
				{ Name = "statTable", Type = "table", Nilable = false },
			},
		},
		{
			Name = "GetItemUniqueness",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "uniqueFamily", Type = "number", Nilable = false },
				{ Name = "maxEquipped", Type = "number", Nilable = false },
			},
		},
		{
			Name = "IsConsumableItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "consumable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsCurrentItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isItem", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsDressableItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isDressable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEquippableItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isEquippable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEquippedItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isEquipped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsEquippedItemType",
			Type = "Function",

			Arguments =
			{
				{ Name = "type", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "isEquipped", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHarmfulItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isHarmful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsHelpfulItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isHarmful", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsItemInRange",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
				{ Name = "unit", Type = "UnitToken", Nilable = true },
			},

			Returns =
			{
				{ Name = "inRange", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "IsUsableItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "isUsable", Type = "bool", Nilable = false },
				{ Name = "notEnoughMana", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "ItemHasRange",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

			Returns =
			{
				{ Name = "hasRange", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PickupItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "itemID", Type = "number", Nilable = true },
				{ Name = "itemName", Type = "string", Nilable = true },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},

		},
		{
			Name = "ReplaceEnchant",
			Type = "Function",

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
			Name = "UseItemByName",
			Type = "Function",
			-- IsProtectedFunction = true,

			Arguments =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "target", Type = "string", Nilable = false },
			},

		},
	},

	Events =
	{
		{
			Name = "CloseInboxItem",
			Type = "Event",
			LiteralName = "CLOSE_INBOX_ITEM",
			Payload =
			{
				{ Name = "id", Type = "number", Nilable = false },
			},
		},
		{
			Name = "DeleteItemConfirm",
			Type = "Event",
			LiteralName = "DELETE_ITEM_CONFIRM",
			Payload =
			{
				{ Name = "itemName", Type = "string", Nilable = false },
				{ Name = "itemQuality", Type = "number", Nilable = false },
			},
		},
		{
			Name = "ItemLocked",
			Type = "Event",
			LiteralName = "ITEM_LOCKED",
		},
		{
			Name = "ItemLockChanged",
			Type = "Event",
			LiteralName = "ITEM_LOCK_CHANGED",
		},
		{
			Name = "ItemPush",
			Type = "Event",
			LiteralName = "ITEM_PUSH",
			Payload =
			{
				{ Name = "bagID", Type = "number", Nilable = false },
				{ Name = "icon", Type = "string", Nilable = false },
			},
		},
		{
			Name = "ItemUnlocked",
			Type = "Event",
			LiteralName = "ITEM_UNLOCKED",
		},
		{
			Name = "MailLockSendItems",
			Type = "Event",
			LiteralName = "MAIL_LOCK_SEND_ITEMS",
		},
		{
			Name = "MailUnlockSendItems",
			Type = "Event",
			LiteralName = "MAIL_UNLOCK_SEND_ITEMS",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Item);
