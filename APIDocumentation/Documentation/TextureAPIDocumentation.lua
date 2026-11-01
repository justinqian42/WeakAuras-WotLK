local TextureAPI =
{
	Name = "Texture",
	Type = "ScriptObject",
	-- Documentation = { "A layered region that displays an image from a texture file or a solid color." },
	Inherits =
	{
		"LayeredRegion",
	},

	Functions =
	{
		{
			Name = "GetBlendMode",
			Type = "Function",
			-- Documentation = { "Returns the blend mode of the texture" },


			Returns =
			{
				{ Name = "mode", Type = "value", Nilable = false --[[ Documentation = { "Blend mode of the texture (string) ADD - Adds texture color values to the underlying color values, using the alpha channel; light areas in the texture lighten the background while dark areas are more transparentALPHAKEY - One-bit transparency; pixels with alpha values greater than ~0.8 are treated as fully opaque and all other pixels are treated as fully transparentBLEND - Normal color blending, using any alpha channel in the texture imageDISABLE - Ignores any alpha channel, displaying the texture as fully opaqueMOD - Ignores any alpha channel in the texture and multiplies texture color values by background color values; dark areas in the texture darken the background while light areas are more transparent" }, ]] },
			},
		},
		{
			Name = "GetHorizTile",
			Type = "Function",


			Returns =
			{
				{ Name = "horizTile", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetNonBlocking",
			Type = "Function",


			Returns =
			{
				{ Name = "nonBlocking", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetTexCoord",
			Type = "Function",
			-- Documentation = { "Returns corner coordinates for scaling or cropping the texture image" },


			Returns =
			{
				{ Name = "ULx", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "ULy", Type = "number", Nilable = false --[[ Documentation = { "Upper left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LLx", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LLy", Type = "number", Nilable = false --[[ Documentation = { "Lower left corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "URx", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "URy", Type = "number", Nilable = false --[[ Documentation = { "Upper right corner Y position, as a fraction of the image's height from the top" }, ]] },
				{ Name = "LRx", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner X position, as a fraction of the image's width from the left" }, ]] },
				{ Name = "LRy", Type = "number", Nilable = false --[[ Documentation = { "Lower right corner Y position, as a fraction of the image's height from the top" }, ]] },
			},
		},
		{
			Name = "GetTexture",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns the texture path or generated-texture name, or nil when there is no image. This is not a numeric file ID.",
			}, ]]


			Returns =
			{
				{ Name = "texture", Type = "string", Nilable = true },
			},
		},
		{
			Name = "GetVertTile",
			Type = "Function",


			Returns =
			{
				{ Name = "vertTile", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "GetVertexColor",
			Type = "Function",
			-- Documentation = { "Returns the shading color of the texture" },


			Returns =
			{
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the color (0.0 - 1.0)" }, ]] },
				{ Name = "alpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the texture (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "IsDesaturated",
			Type = "Function",


			Returns =
			{
				{ Name = "desaturated", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SetBlendMode",
			Type = "Function",
			-- Documentation = { "Sets the blend mode of the texture" },

			Arguments =
			{
				{ Name = "mode", Type = "value", Nilable = false --[[ Documentation = { "Blend mode of the texture (string) ADD - Adds texture color values to the underlying color values, using the alpha channel; light areas in the texture lighten the background while dark areas are more transparentALPHAKEY - One-bit transparency; pixels with alpha values greater than ~0.8 are treated as fully opaque and all other pixels are treated as fully transparentBLEND - Normal color blending, using any alpha channel in the texture imageDISABLE - Ignores any alpha channel, displaying the texture as fully opaqueMOD - Ignores any alpha channel in the texture and multiplies texture color values by background color values; dark areas in the texture darken the background while light areas are more transparent" }, ]] },
			},
		},
		{
			Name = "SetDesaturated",
			Type = "Function",
			--[[ Documentation =
			{
				"Returns 1 if the requested image-mode shader is available, otherwise nil. Setting a texture image selects its normal image mode again; reapply desaturation after replacing the image.",
			}, ]]

			Arguments =
			{
				{ Name = "desaturate", Type = "bool", Nilable = true, Default = true },
			},

			Returns =
			{
				{ Name = "supported", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SetGradient",
			Type = "Function",
			-- Documentation = { "Sets a gradient color shading for the texture" },

			Arguments =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the direction of the gradient (string) HORIZONTAL - Start color on the left, end color on the rightVERTICAL - Start color at the bottom, end color at the top" }, ]] },
				{ Name = "startR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "endR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the end color (0.0 - 1.0)" }, ]] },
			},
		},
		{
			Name = "SetGradientAlpha",
			Type = "Function",
			-- Documentation = { "Sets a gradient color shading for the texture (including opacity in the gradient)" },

			Arguments =
			{
				{ Name = "orientation", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the direction of the gradient (string) HORIZONTAL - Start color on the left, end color on the rightVERTICAL - Start color at the bottom, end color at the top" }, ]] },
				{ Name = "startR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the start color (0.0 - 1.0)" }, ]] },
				{ Name = "startAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the start side of the gradient (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
				{ Name = "endR", Type = "number", Nilable = false --[[ Documentation = { "Red component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endG", Type = "number", Nilable = false --[[ Documentation = { "Green component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endB", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the end color (0.0 - 1.0)" }, ]] },
				{ Name = "endAlpha", Type = "number", Nilable = false --[[ Documentation = { "Alpha (opacity) for the end side of the gradient (0.0 = fully transparent, 1.0 = fully opaque)" }, ]] },
			},
		},
		{
			Name = "SetHorizTile",
			Type = "Function",

			Arguments =
			{
				{ Name = "horizTile", Type = "bool", Nilable = true, Default = true },
			},
		},
		{
			Name = "SetNonBlocking",
			Type = "Function",

			Arguments =
			{
				{ Name = "nonBlocking", Type = "bool", Nilable = true, Default = true },
			},
		},
		{
			Name = "SetRotation",
			Type = "Function",
			--[[ Documentation =
			{
				"Replaces all four texture coordinates using an angle in radians. This overwrites prior cropping or custom texture coordinates. Both cx and cy must be numeric to override the default center (0.5, 0.5).",
			}, ]]

			Arguments =
			{
				{ Name = "radians", Type = "number", Nilable = false },
				{ Name = "cx", Type = "number", Nilable = true },
				{ Name = "cy", Type = "number", Nilable = true },
			},
		},
		{
			Name = "SetTexCoord",
			Type = "Function",
			--[[ Documentation =
			{
				"Sets texture coordinates using either four values (left, right, top, bottom) or eight values (ULx, ULy, LLx, LLy, URx, URy, LRx, LRy).",
				"Each coordinate must be in -10000..10000. Coordinates outside 0..1 are allowed.",
			}, ]]

			Arguments =
			{
				{ Name = "coordinate1", Type = "number", Nilable = false },
				{ Name = "coordinate2", Type = "number", Nilable = false },
				{ Name = "coordinate3", Type = "number", Nilable = false },
				{ Name = "coordinate4", Type = "number", Nilable = false },
				{ Name = "coordinate5", Type = "number", Nilable = true },
				{ Name = "coordinate6", Type = "number", Nilable = true },
				{ Name = "coordinate7", Type = "number", Nilable = true },
				{ Name = "coordinate8", Type = "number", Nilable = true },
			},
		},
		{
			Name = "SetTexture",
			Type = "Function",
			--[[ Documentation =
			{
				"Overloads: SetTexture(path [, wrap]), SetTexture(red, green, blue [, alpha]), or SetTexture(nil) to clear the image.",
				"A numeric first argument selects a solid color; it is not a file ID, spell ID or atlas ID. Color components are clamped to 0..1; alpha defaults to 1.",
				"The path overload reads one boolean wrap argument for both axes; separate wrap arguments are not supported. Returns 1 after setting or clearing the texture, or nil when loading the path fails.",
			}, ]]

			Arguments =
			{
				{ Name = "textureOrRed", Type = "LuaValueVariant", Nilable = true },
				{ Name = "wrapOrGreen", Type = "LuaValueVariant", Nilable = true },
				{ Name = "blue", Type = "number", Nilable = true },
				{ Name = "alpha", Type = "number", Nilable = true },
			},

			Returns =
			{
				{ Name = "success", Type = "bool", Nilable = true },
			},
		},
		{
			Name = "SetVertTile",
			Type = "Function",

			Arguments =
			{
				{ Name = "vertTile", Type = "bool", Nilable = true, Default = true },
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

APIDocumentation:AddDocumentationTable(TextureAPI);

