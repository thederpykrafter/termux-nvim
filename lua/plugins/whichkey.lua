return {
  'folke/which-key.nvim',
  event = 'VimEnter',
  config = function()
    require('which-key').setup()
    require('which-key').add({
      -- Lazy Prefix
      { '<leader>d', group = 'Diagnostic' },
      { '<leader>d_', hidden = true },
      { '<leader>g', group = 'Git' },
      { '<leader>g_', hidden = true },
      { '<leader>l', group = 'Lazy' },
      { '<leader>l_', hidden = true },
      { '<leader>s', group = 'Search' },
      { '<leader>s_', hidden = true },
    })
  end,
}
