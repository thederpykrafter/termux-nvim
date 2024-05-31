return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    require("which-key").setup()
    require("which-key").register {
      -- Lazy Prefix
      ["<leader>l"] = { name = "Lazy", _ = "which_key_ignore"},
      ["<leader>s"] = { name = "Search", _ = "which_key_ignore"},
      ["<leader>d"] = { name = "Diagnostic", _ = "which_key_ignore"}
    }
  end
}
