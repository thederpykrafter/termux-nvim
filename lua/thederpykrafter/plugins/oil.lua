return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons"},
  opts = {
    keymaps = {
      ["q"] = "actions.close",
      ["H"] = "actions.toggle_hidden",
    },
  }
}
