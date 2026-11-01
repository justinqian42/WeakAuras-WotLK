local PlayerModelAPI =
{
	Name = "PlayerModel",
	Type = "ScriptObject",
	--[[ Documentation = { "A model frame that displays units and creatures from cached creature data." }, ]]
	Inherits =
	{
		"Model",
	},

	Functions =
	{
		{
			Name = "RefreshUnit",
			Type = "Function",
			-- Documentation = { "Updates the model's appearance to match that of its unit" },

		},
		{
			Name = "SetCreature",
			Type = "Function",
			--[[ Documentation =
			{
				"Accepts a creature entry ID, not a display ID. Requires the creature record to be present in the client cache; no model is selected when the record is unavailable.",
			}, ]]

			Arguments =
			{
				{ Name = "creatureID", Type = "number", Nilable = false },
			},
		},
		{
			Name = "SetRotation",
			Type = "Function",
			-- Documentation = { "Sets the model's current rotation by animating the model" },

			Arguments =
			{
				{ Name = "facing", Type = "number", Nilable = false --[[ Documentation = { "Rotation angle for the model (in radians)" }, ]] },
			},
		},
		{
			Name = "SetUnit",
			Type = "Function",
			-- Documentation = { "Sets the model to display the 3D model of a specific unit" },

			Arguments =
			{
				{ Name = "unit", Type = "string, unitid", Nilable = false --[[ Documentation = { "Unit ID of a visible unit" }, ]] },
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

APIDocumentation:AddDocumentationTable(PlayerModelAPI);

