local Merchant =
{
	Name = "Merchant",
	Type = "System",
	Namespace = "Merchant",

	Functions =
	{
		{
			Name = "BuyMerchantItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
			},

		},
		{
			Name = "BuybackItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "CanMerchantRepair",
			Type = "Function",

			Returns =
			{
				{ Name = "canRepair", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "CloseMerchant",
			Type = "Function",

		},
		{
			Name = "ContainerRefundItemPurchase",
			Type = "Function",

			Arguments =
			{
				{ Name = "container", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},

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
			Name = "GetBuybackItemInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "texture", Type = "string", Nilable = false },
				{ Name = "price", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "numAvailable", Type = "number", Nilable = false },
				{ Name = "isUsable", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetBuybackItemLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "string", Nilable = false },
			},
		},
		{
			Name = "GetContainerItemPurchaseInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "container", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
				{ Name = "IsEquipped", Type = "bool", Nilable = false },
			},

			Returns =
			{
				{ Name = "money", Type = "number", Nilable = false },
				{ Name = "itemCount", Type = "number", Nilable = false },
				{ Name = "refundSec", Type = "number", Nilable = false },
				{ Name = "currecycount", Type = "number", Nilable = false },
				{ Name = "hasEnchants", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetContainerItemPurchaseItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "container", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "link", Type = "itemLink", Nilable = false },
			},
		},
		{
			Name = "GetMerchantItemCostInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns honor cost, arena-point cost and number of additional required item types, in that order.",
			}, ]]

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "honorPoints", Type = "number", Nilable = false },
				{ Name = "arenaPoints", Type = "number", Nilable = false },
				{ Name = "itemCount", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMerchantItemCostItem",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns texture, required quantity and item link. If the record is unavailable, only texture (nil) and quantity are returned. There is no separate item-name return value.",
			}, ]]

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
				{ Name = "itemIndex", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = true },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "itemLink", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetMerchantItemInfo",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "name", Type = "string", Nilable = false },
				{ Name = "texture", Type = "string", Nilable = false },
				{ Name = "price", Type = "number", Nilable = false },
				{ Name = "quantity", Type = "number", Nilable = false },
				{ Name = "numAvailable", Type = "number", Nilable = false },
				{ Name = "isUsable", Type = "bool", Nilable = false },
				{ Name = "extendedCost", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "GetMerchantItemLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "hyperlink", Nilable = false },
			},
		},
		{
			Name = "GetMerchantItemMaxStack",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "maxStack", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetMerchantNumItems",
			Type = "Function",

			Returns =
			{
				{ Name = "numMerchantItems", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetNumBuybackItems",
			Type = "Function",

			Returns =
			{
				{ Name = "numBuybackItems", Type = "number", Nilable = false },
			},
		},
		{
			Name = "GetRepairAllCost",
			Type = "Function",

			Returns =
			{
				{ Name = "repairAllCost", Type = "number", Nilable = false },
				{ Name = "canRepair", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "InRepairMode",
			Type = "Function",

			Returns =
			{
				{ Name = "inRepair", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PickupMerchantItem",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "RepairAllItems",
			Type = "Function",

			Arguments =
			{
				{ Name = "useGuildMoney", Type = "bool", Nilable = true },
			},

		},
		{
			Name = "ShowContainerSellCursor",
			Type = "Function",

			Arguments =
			{
				{ Name = "container", Type = "number", Nilable = false },
				{ Name = "slot", Type = "number", Nilable = false },
			},

		},
		{
			Name = "ShowRepairCursor",
			Type = "Function",

		},
	},

	Events =
	{
		{
			Name = "MerchantClosed",
			Type = "Event",
			LiteralName = "MERCHANT_CLOSED",
		},
		{
			Name = "MerchantShow",
			Type = "Event",
			LiteralName = "MERCHANT_SHOW",
		},
		{
			Name = "MerchantUpdate",
			Type = "Event",
			LiteralName = "MERCHANT_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Merchant);
