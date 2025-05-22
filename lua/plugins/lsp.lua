return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = {
        library = {
          { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
    },
    config = function()
      require('lspconfig').lua_ls.setup {}
      require('lspconfig').bashls.setup {}
      require('lspconfig').gopls.setup {}
      require('lspconfig').zls.setup {}
      require('lspconfig').rust_analyzer.setup {}
      require('lspconfig').svelte.setup {}
      require('lspconfig').tailwindcss.setup {}
      require('lspconfig').ts_ls.setup {}
      require('lspconfig').ols.setup {}
      require('lspconfig').clangd.setup {}
      require('lspconfig').java_language_server.setup {}
      require('lspconfig').pyright.setup {}
    end,
  },
}
