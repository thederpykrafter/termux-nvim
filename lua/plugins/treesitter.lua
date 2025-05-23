return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      'bash',
      'c',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'vim',
      'vimdoc',
      'c3',
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = { enable = true, disable = { 'ruby' } },
  },
  config = function(_, opts)
    require('nvim-treesitter.install').prefer_git = true
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup(opts)

    vim.filetype.add({
      extension = {
        c3 = 'c3',
        c3i = 'c3',
        c3t = 'c3',
      },
    })

    ---@class parser_config . [inject-field]
    local parser_config =
      require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.c3 = {
      install_info = {
        url = 'https://github.com/c3lang/tree-sitter-c3',
        files = { 'src/parser.c', 'src/scanner.c' },
        branch = 'main',
      },
    }
  end,
}
