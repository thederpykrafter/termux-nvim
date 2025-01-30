return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		keymaps = {
			["?"] = "actions.show_help",
			["q"] = "actions.close",
			["H"] = "actions.toggle_hidden",
		},
		watch_for_changes = true,
		skip_confirm_for_simple_edits = true,
	},
}
