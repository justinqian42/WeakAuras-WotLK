local Glyph =
{
	Name = "Glyph",
	Type = "System",
	Namespace = "Glyph",

	Functions =
	{
		{
			Name = "GetGlyphLink",
			Type = "Function",

			Arguments =
			{
				{ Name = "socket", Type = "number", Nilable = false },
				{ Name = "talentGroup", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "link", Type = "hyperlink", Nilable = false },
			},
		},
		{
			Name = "GetGlyphSocketInfo",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns four values: enabled, glyph type, glyph spell ID and icon. There is no glyphTooltipIndex return value.",
				"Returns no values when the socket, player or talent group is unavailable. The enabled flag uses 1/nil.",
			}, ]]

			Arguments =
			{
				{ Name = "socket", Type = "number", Nilable = false, --[[ Documentation = { "One-based glyph socket index." } ]] },
				{ Name = "talentGroup", Type = "number", Nilable = true, --[[ Documentation = { "Defaults to the local active talent group." } ]] },
			},

			Returns =
			{
				{ Name = "enabled", Type = "bool", Nilable = true },
				{ Name = "glyphType", Type = "number", Nilable = true },
				{ Name = "glyphSpell", Type = "number", Nilable = true },
				{ Name = "icon", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetNumGlyphSockets",
			Type = "Function",

		},
		{
			Name = "GlyphMatchesSocket",
			Type = "Function",

			Arguments =
			{
				{ Name = "socket", Type = "number", Nilable = false },
			},

			Returns =
			{
				{ Name = "match", Type = "bool", Nilable = false },
			},
		},
		{
			Name = "PlaceGlyphInSocket",
			Type = "Function",

			Arguments =
			{
				{ Name = "socket", Type = "number", Nilable = false },
			},

		},
		{
			Name = "RemoveGlyphFromSocket",
			Type = "Function",

			Arguments =
			{
				{ Name = "socket", Type = "number", Nilable = false },
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
	},

	Events =
	{
		{
			Name = "GlyphAdded",
			Type = "Event",
			LiteralName = "GLYPH_ADDED",
		},
		{
			Name = "GlyphDisabled",
			Type = "Event",
			LiteralName = "GLYPH_DISABLED",
		},
		{
			Name = "GlyphEnabled",
			Type = "Event",
			LiteralName = "GLYPH_ENABLED",
		},
		{
			Name = "GlyphRemoved",
			Type = "Event",
			LiteralName = "GLYPH_REMOVED",
		},
		{
			Name = "GlyphUpdated",
			Type = "Event",
			LiteralName = "GLYPH_UPDATED",
		},
		{
			Name = "UseGlyph",
			Type = "Event",
			LiteralName = "USE_GLYPH",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Glyph);
