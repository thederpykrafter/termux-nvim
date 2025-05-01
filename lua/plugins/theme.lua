return {
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function() vim.cmd "colorscheme bluloco" end,
	},
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").clear_prefix "NeoTree"
			require("transparent").clear_prefix "Telescope"
			require("transparent").clear_prefix "MiniStatusline"
			require("transparent").setup {
				groups = { -- table: default groups
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
				},
				extra_groups = {
					"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				},
			}
		end,
	},
}
