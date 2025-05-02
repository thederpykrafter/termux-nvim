return {
	{
		"neoclide/coc.nvim",
		branch = "release",
		config = function()
			function _G.check_back_space()
				local col = vim.fn.col(".") - 1
				return col == 0
					or vim.fn.getline("."):sub(col, col):match("%s")
						~= nil
			end

			local keymap = vim.keymap.set

			keymap(
				"i",
				"<TAB>",
				'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',
				{
					desc = "coc next",
					silent = true,
					noremap = true,
					expr = true,
					replace_keycodes = false,
				}
			)
			keymap(
				"i",
				"<S-TAB>",
				[[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]],
				{
					desc = "coc previous",
					silent = true,
					noremap = true,
					expr = true,
					replace_keycodes = false,
				}
			)
			keymap(
				"i",
				"<cr>",
				[[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
				{
					desc = "coc accept",
					silent = true,
					noremap = true,
					expr = true,
					replace_keycodes = false,
				}
			)
			keymap(
				"i",
				"<C-c>",
				"coc#refresh()",
				{ desc = "coc refresh", silent = true, expr = true }
			)
		end,
	},
	{
		"tjdevries/coc-zsh",
		config = function() end,
	},
}
