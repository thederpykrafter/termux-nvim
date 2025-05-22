return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    keymaps = {
      ['q'] = { 'actions.close', mode = 'n' },
      ['H'] = { 'actions.toggle_hidden', mode = 'n' },
      ['?'] = { 'actions.show_help', mode = 'n' },
      ['<CR>'] = 'actions.select',
      ['<C-p>'] = 'actions.preview',
      ['-'] = { 'actions.parent', mode = 'n' },
      ['_'] = { 'actions.open_cwd', mode = 'n' },
      ['`'] = { 'actions.cd', mode = 'n' },
      ['~'] = {
        'actions.cd',
        opts = { scope = 'tab' },
        mode = 'n',
      },
      ['gs'] = { 'actions.change_sort', mode = 'n' },
      ['gx'] = 'actions.open_external',
    },
    use_default_keymaps = false,
  },
}
