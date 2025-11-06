return {
	version = "1.1",
	luaversion = "5.1",
	orientation = "orthogonal",
	width = 8,
	height = 8,
	tilewidth = 64,
	tileheight = 64,
	properties = {},
	tilesets = {
		{
			name = "tiles",
			firstgid = 1,
			tilewidth = 64,
			tileheight = 64,
			spacing = 0,
			margin = 0,
			image = "",
			imagewidth = 512,
			imageheight = 384,
			properties = {},
			tiles = {}
		}
	},
	layers = {
		{
			type = "tilelayer",
			name = "BG_TILES",
			x = 0,
			y = 0,
			width = 8,
			height = 8,
			visible = true,
			opacity = 1,
			properties = {},
			encoding = "lua",
			data = {
				0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 8, 8, 0, 8, 0, 0,
				0, 8, 0, 8, 8, 8, 8, 0,
				0, 8, 8, 8, 3, 8, 0, 0,
				0, 0, 8, 8, 8, 8, 8, 0,
				0, 8, 8, 8, 8, 8, 8, 0,
				0, 0, 8, 0, 8, 8, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0
			}
		},
		{
			type = "objectgroup",
			name = "FG_OBJECTS",
			visible = true,
			opacity = 1,
			properties = {},
			objects = {
				{
					name = "",
					type = "icebox",
					shape = "rectangle",
					x = 256,
					y = 301,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "polarice_plow_item",
					shape = "rectangle",
					x = 288,
					y = 224,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "rock1",
					shape = "rectangle",
					x = 102,
					y = 218,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "rock_flintless",
					shape = "rectangle",
					x = 210,
					y = 83,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "rock_ice",
					shape = "rectangle",
					x = 397,
					y = 288,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "rock1",
					shape = "rectangle",
					x = 301,
					y = 422,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "rock_ice",
					shape = "rectangle",
					x = 160,
					y = 416,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "walrus_camp",
					shape = "rectangle",
					x = 352,
					y = 160,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "walrus_camp",
					shape = "rectangle",
					x = 192,
					y = 256,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "walrus_camp",
					shape = "rectangle",
					x = 352,
					y = 352,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "blowdart_pipe",
					shape = "rectangle",
					x = 301,
					y = 160,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				},
				{
					name = "",
					type = "pickaxe",
					shape = "rectangle",
					x = 326,
					y = 326,
					width = 0,
					height = 0,
					visible = true,
					properties = {}
				}
			}
		}
	}
}
