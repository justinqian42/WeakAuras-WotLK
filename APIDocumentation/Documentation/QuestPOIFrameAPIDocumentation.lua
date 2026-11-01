local QuestPOIFrameAPI =
{
	Name = "QuestPOIFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame used to display quest points of interest on the world map." },
	Inherits =
	{
		"Frame",
	},

	Functions =
	{
		{
			Name = "DrawQuestBlob",
			Type = "Function",
			--[[ Documentation =
			{
				"Adds or removes the quest area for a quest ID. The second argument controls whether to show it; omitting it removes the quest.",
			}, ]]

			Arguments =
			{
				{ Name = "questID", Type = "number", Nilable = false },
				{ Name = "show", Type = "bool", Nilable = true, Default = false },
			},
		},
		{
			Name = "UpdateQuestPOI",
			Type = "Function",
			--[[ Documentation =
			{
				"This method has no effect.",
			}, ]]

		},
		{
			Name = "EnableMerging",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "EnableSmoothing",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "GetNumTooltips",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "GetTooltipIndex",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "SetBorderAlpha",
			Type = "Function",
			-- Documentation = { "Set the alpha for the border texture" },

		},
		{
			Name = "SetBorderScalar",
			Type = "Function",
			-- Documentation = { "Set the Border Scalar" },

		},
		{
			Name = "SetBorderTexture",
			Type = "Function",
			-- Documentation = { "Sets the border Texture for the Blob" },

		},
		{
			Name = "SetFillAlpha",
			Type = "Function",
			-- Documentation = { "Set the Alpha for the fill Texture" },

		},
		{
			Name = "SetFillTexture",
			Type = "Function",
			-- Documentation = { "Set the fill Texture for the Blob." },

		},
		{
			Name = "SetMergeThreshold",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "SetNumSplinePoints",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "UpdateMouseOverTooltip",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "CanChangeAttribute",
			Type = "Function",
			-- Documentation = { "Returns whether secure frame attributes can currently be changed" },


			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if secure frame attributes can currently be changed; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetDontSavePosition",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "SetDontSavePosition",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
	},

	Events =
	{
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(QuestPOIFrameAPI);

