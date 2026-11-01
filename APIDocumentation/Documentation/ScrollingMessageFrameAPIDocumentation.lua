local ScrollingMessageFrameAPI =
{
	Name = "ScrollingMessageFrame",
	Type = "ScriptObject",
	-- Documentation = { "A frame that displays a scrollable backlog of text messages with configurable font and fading." },
	Inherits =
	{
		"Frame",
		"FontInstance",
	},

	Functions =
	{
		{
			Name = "AddMessage",
			Type = "Function",
			-- Documentation = { "Adds a message to those listed in the frame" },

			Arguments =
			{
				{ Name = "text", Type = "string", Nilable = false --[[ Documentation = { "Text of the message" }, ]] },
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the text color for the message (0.0 - 1.0)" }, ]] },
				{ Name = "id", Type = "number", Nilable = false --[[ Documentation = { "Identifier for the message's type (see :UpdateColorByID())" }, ]] },
				{ Name = "addToTop", Type = "bool", Nilable = false --[[ Documentation = { "True to insert the message above all others listed in the frame, even if the frame's insert mode is set to BOTTOM; false to insert according to the frame's insert mode" }, ]] },
			},
		},
		{
			Name = "AtBottom",
			Type = "Function",
			-- Documentation = { "Returns whether the message frame is currently scrolled to the bottom of its contents" },


			Returns =
			{
				{ Name = "atBottom", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the message frame is currently scrolled to the bottom of its contents; otherwise nil" }, ]] },
			},
		},
		{
			Name = "AtTop",
			Type = "Function",
			-- Documentation = { "Returns whether the message frame is currently scrolled to the top of its contents" },


			Returns =
			{
				{ Name = "atTop", Type = "1nil", Nilable = false --[[ Documentation = { "1 if the message frame is currently scrolled to the top of its contents; otherwise nil" }, ]] },
			},
		},
		{
			Name = "Clear",
			Type = "Function",
			-- Documentation = { "Removes all messages stored or displayed in the frame" },

		},
		{
			Name = "GetCurrentLine",
			Type = "Function",
			-- Documentation = { "Returns a number identifying the last message added to the frame" },


			Returns =
			{
				{ Name = "lineNum", Type = "number", Nilable = false --[[ Documentation = { "A number identifying the last message added to the frame" }, ]] },
			},
		},
		{
			Name = "GetCurrentScroll",
			Type = "Function",
			-- Documentation = { "Returns the message frame's current scroll position" },


			Returns =
			{
				{ Name = "offset", Type = "number", Nilable = false --[[ Documentation = { "Number of lines by which the frame is currently scrolled back from the end of its message history" }, ]] },
			},
		},
		{
			Name = "GetFadeDuration",
			Type = "Function",
			-- Documentation = { "Returns the duration of the fade-out animation for disappearing messages" },


			Returns =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Duration of the fade-out animation for disappearing messages (in seconds)" }, ]] },
			},
		},
		{
			Name = "GetFading",
			Type = "Function",
			-- Documentation = { "Returns whether messages added to the frame automatically fade out after a period of time" },


			Returns =
			{
				{ Name = "fading", Type = "1nil", Nilable = false --[[ Documentation = { "1 if messages added to the frame automatically fade out after a period of time; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetHyperlinksEnabled",
			Type = "Function",
			-- Documentation = { "Returns whether hyperlinks in the frame's text are interactive" },


			Returns =
			{
				{ Name = "enabled", Type = "1nil", Nilable = false --[[ Documentation = { "1 if hyperlinks in the frame's text are interactive; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Returns whether long lines of text are indented when wrapping" },


			Returns =
			{
				{ Name = "indent", Type = "1nil", Nilable = false --[[ Documentation = { "1 if long lines of text are indented when wrapping; otherwise nil" }, ]] },
			},
		},
		{
			Name = "GetInsertMode",
			Type = "Function",
			-- Documentation = { "Returns the position at which new messages are added to the frame" },


			Returns =
			{
				{ Name = "position", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the position at which new messages are added to the frame (string) BOTTOMTOP" }, ]] },
			},
		},
		{
			Name = "GetMaxLines",
			Type = "Function",
			-- Documentation = { "Returns the maximum number of messages kept in the frame" },

			Arguments =
			{
				{ Name = "maxLines", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of messages kept in the frame" }, ]] },
			},
		},
		{
			Name = "GetMessageInfo",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "GetNumLinesDisplayed",
			Type = "Function",
			-- Documentation = { "Returns the number of lines displayed in the message frame" },


			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false --[[ Documentation = { "Number of messages currently displayed in the frame" }, ]] },
			},
		},
		{
			Name = "GetNumMessages",
			Type = "Function",
			-- Documentation = { "Returns the number of messages currently kept in the frame's message history" },


			Returns =
			{
				{ Name = "count", Type = "number", Nilable = false --[[ Documentation = { "Number of messages currently kept in the frame's message history" }, ]] },
			},
		},
		{
			Name = "GetTimeVisible",
			Type = "Function",
			-- Documentation = { "Returns the amount of time for which a message remains visible before beginning to fade out" },


			Returns =
			{
				{ Name = "time", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which a message remains visible before beginning to fade out (in seconds)" }, ]] },
			},
		},
		{
			Name = "PageDown",
			Type = "Function",
			-- Documentation = { "Scrolls the message frame's contents down by one page" },

		},
		{
			Name = "PageUp",
			Type = "Function",
			-- Documentation = { "Scrolls the message frame's contents up by one page" },

		},
		{
			Name = "RemoveMessagesByAccessID",
			Type = "Function",
			-- Documentation = { "This function is not yet documented" },

		},
		{
			Name = "ScrollDown",
			Type = "Function",
			-- Documentation = { "Scrolls the message frame's contents down by two lines" },

		},
		{
			Name = "ScrollToBottom",
			Type = "Function",
			-- Documentation = { "Scrolls to the bottom of the message frame's contents" },

		},
		{
			Name = "ScrollToTop",
			Type = "Function",
			-- Documentation = { "Scrolls to the top of the message frame's contents" },

		},
		{
			Name = "ScrollUp",
			Type = "Function",
			-- Documentation = { "Scrolls the message frame's contents up by two lines" },

		},
		{
			Name = "SetFadeDuration",
			Type = "Function",
			-- Documentation = { "Sets the duration of the fade-out animation for disappearing messages" },

			Arguments =
			{
				{ Name = "duration", Type = "number", Nilable = false --[[ Documentation = { "Duration of the fade-out animation for disappearing messages (in seconds)" }, ]] },
			},
		},
		{
			Name = "SetFading",
			Type = "Function",
			-- Documentation = { "Sets whether messages added to the frame automatically fade out after a period of time" },

			Arguments =
			{
				{ Name = "fading", Type = "bool", Nilable = false --[[ Documentation = { "True to cause messages added to the frame to automatically fade out after a period of time; false to leave message visible" }, ]] },
			},
		},
		{
			Name = "SetHyperlinksEnabled",
			Type = "Function",
			-- Documentation = { "Enables or disables hyperlink interactivity in the frame" },

			Arguments =
			{
				{ Name = "enable", Type = "bool", Nilable = false --[[ Documentation = { "True to enable hyperlink interactivity in the frame; false to disable" }, ]] },
			},
		},
		{
			Name = "SetIndentedWordWrap",
			Type = "Function",
			-- Documentation = { "Sets whether long lines of text are indented when wrapping" },

			Arguments =
			{
				{ Name = "indent", Type = "bool", Nilable = false --[[ Documentation = { "True to indent wrapped lines of text; false otherwise" }, ]] },
			},
		},
		{
			Name = "SetInsertMode",
			Type = "Function",
			-- Documentation = { "Sets the position at which new messages are added to the frame" },

			Arguments =
			{
				{ Name = "position", Type = "value", Nilable = false --[[ Documentation = { "Token identifying the position at which new messages should be added to the frame (string) BOTTOMTOP" }, ]] },
			},
		},
		{
			Name = "SetMaxLines",
			Type = "Function",
			-- Documentation = { "Sets the maximum number of messages to be kept in the frame" },

			Arguments =
			{
				{ Name = "maxLines", Type = "number", Nilable = false --[[ Documentation = { "Maximum number of messages to be kept in the frame" }, ]] },
			},
		},
		{
			Name = "SetScrollOffset",
			Type = "Function",
			-- Documentation = { "Sets the message frame's scroll position" },

			Arguments =
			{
				{ Name = "offset", Type = "number", Nilable = false --[[ Documentation = { "Number of lines to scroll back from the end of the frame's message history" }, ]] },
			},
		},
		{
			Name = "SetTimeVisible",
			Type = "Function",
			-- Documentation = { "Sets the amount of time for which a message remains visible before beginning to fade out" },

			Arguments =
			{
				{ Name = "time", Type = "number", Nilable = false --[[ Documentation = { "Amount of time for which a message remains visible before beginning to fade out (in seconds)" }, ]] },
			},
		},
		{
			Name = "UpdateColorByID",
			Type = "Function",
			-- Documentation = { "Updates the color of a set of messages already added to the frame" },

			Arguments =
			{
				{ Name = "id", Type = "number", Nilable = false --[[ Documentation = { "Identifier for a message's type (as set when the messages were added to the frame)" }, ]] },
				{ Name = "red", Type = "number", Nilable = false --[[ Documentation = { "Red component of the new text color (0.0 - 1.0)" }, ]] },
				{ Name = "green", Type = "number", Nilable = false --[[ Documentation = { "Green component of the new text color (0.0 - 1.0)" }, ]] },
				{ Name = "blue", Type = "number", Nilable = false --[[ Documentation = { "Blue component of the new text color (0.0 - 1.0)" }, ]] },
			},
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

APIDocumentation:AddDocumentationTable(ScrollingMessageFrameAPI);

