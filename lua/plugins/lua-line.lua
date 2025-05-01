local colors = {
	gray = "#000000",
	lightred = "#D16969",
	blue = "#569CD6",
	pink = "#C586C0",
	black = "#262626",
	white = "#D4D4D4",
	green = "#608B4E",
}

return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				icons_enabled = true,
				theme = {
					normal = {
						b = { fg = colors.green, bg = colors.black },
						a = {
							fg = colors.black,
							bg = colors.green,
							gui = "bold",
						},
						c = { fg = colors.white, bg = colors.black },
					},
					visual = {
						b = { fg = colors.pink, bg = colors.black },
						a = {
							fg = colors.black,
							bg = colors.pink,
							gui = "bold",
						},
					},
					inactive = {
						b = { fg = colors.black, bg = colors.blue },
						a = {
							fg = colors.white,
							bg = colors.gray,
							gui = "bold",
						},
					},
					replace = {
						b = { fg = colors.lightred, bg = colors.black },
						a = {
							fg = colors.black,
							bg = colors.lightred,
							gui = "bold",
						},
						c = { fg = colors.white, bg = colors.black },
					},
					insert = {
						b = { fg = colors.blue, bg = colors.black },
						a = {
							fg = colors.black,
							bg = colors.blue,
							gui = "bold",
						},
						c = { fg = colors.white, bg = colors.black },
					},
				},
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "fileformat", "filetype" },
				lualine_y = { "" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		},
	},
}
