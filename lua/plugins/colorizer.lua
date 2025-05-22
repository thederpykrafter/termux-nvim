return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require 'colorizer'.setup({
      '*',
      '!vim',
    }, { names = false })
  end,
}
