return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local keymap = vim.keymap.set
    keymap(
      'n',
      '<leader>st',
      '<cmd>TodoTelescope<cr>',
      { desc = '[S]earch [T]odo Telescope' }
    )
    keymap(
      'n',
      '<leader>sl',
      '<cmd>TodoLocList<cr>',
      { desc = '[S]earch Todo [L]ocList' }
    )
  end,
}
