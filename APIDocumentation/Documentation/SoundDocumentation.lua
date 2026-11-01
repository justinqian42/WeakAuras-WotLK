local Sound =
{
	Name = "Sound",
	Type = "System",
	Namespace = "Sound",

	Functions =
	{
		{
			Name = "PlayMusic",
			Type = "Function",
			--[[ Documentation =
			{
				"Plays a music file. Returns 1 after dispatching the request; no sound handle is returned.",
			}, ]]

			Arguments =
			{
				{ Name = "musicfile", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "dispatched", Type = "number", Nilable = false, --[[ Documentation = { "Always 1 after a valid call." } ]] },
			},
		},
		{
			Name = "PlaySound",
			Type = "Function",
			--[[ Documentation =
			{
				"Plays a sound by its sound-kit name or numeric ID. Returns no values. Additional arguments are ignored.",
			}, ]]

			Arguments =
			{
				{ Name = "sound", Type = "LuaValueVariant", Nilable = false },
			},
		},
		{
			Name = "PlaySoundFile",
			Type = "Function",
			--[[ Documentation =
			{
				"Plays a sound file and returns 1 after requesting playback. Additional arguments are ignored. The return value does not indicate whether the sound was audible.",
			}, ]]

			Arguments =
			{
				{ Name = "soundFile", Type = "string", Nilable = false },
			},

			Returns =
			{
				{ Name = "dispatched", Type = "number", Nilable = false, --[[ Documentation = { "Always 1 after a valid call." } ]] },
			},
		},
		{
			Name = "Sound_ChatSystem_GetInputDriverNameByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "Sound_ChatSystem_GetNumInputDrivers",
			Type = "Function",

		},
		{
			Name = "Sound_ChatSystem_GetNumOutputDrivers",
			Type = "Function",

		},
		{
			Name = "Sound_ChatSystem_GetOutputDriverNameByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "Sound_GameSystem_GetInputDriverNameByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "Sound_GameSystem_GetNumInputDrivers",
			Type = "Function",

		},
		{
			Name = "Sound_GameSystem_GetNumOutputDrivers",
			Type = "Function",

		},
		{
			Name = "Sound_GameSystem_GetOutputDriverNameByIndex",
			Type = "Function",

			Arguments =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},

		},
		{
			Name = "Sound_GameSystem_RestartSoundSystem",
			Type = "Function",

		},
		{
			Name = "StopMusic",
			Type = "Function",

		},
		{
			Name = "VoiceEnumerateCaptureDevices",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceIndex", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "deviceName", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoiceEnumerateOutputDevices",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceIndex", Type = "luaIndex", Nilable = false },
			},

			Returns =
			{
				{ Name = "device", Type = "string", Nilable = false },
			},
		},
		{
			Name = "VoiceGetCurrentCaptureDevice",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},
		},
		{
			Name = "VoiceGetCurrentOutputDevice",
			Type = "Function",

			Returns =
			{
				{ Name = "index", Type = "luaIndex", Nilable = false },
			},
		},
		{
			Name = "VoiceSelectCaptureDevice",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceName", Type = "string", Nilable = false },
			},

		},
		{
			Name = "VoiceSelectOutputDevice",
			Type = "Function",

			Arguments =
			{
				{ Name = "deviceName", Type = "string", Nilable = false },
			},

		},
	},

	Events =
	{
		{
			Name = "SoundDeviceUpdate",
			Type = "Event",
			LiteralName = "SOUND_DEVICE_UPDATE",
		},
	},

	Tables =
	{
	},
};

APIDocumentation:AddDocumentationTable(Sound);
