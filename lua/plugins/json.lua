return {
  'VPavliashvili/json-nvim',
  ft = 'json', -- only load for json filetype
  config = function()
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = { '*.json' },
      callback = function() vim.cmd 'JsonFormatFile' end,
      group = vim.api.nvim_create_augroup('json_format', { clear = true }),
    })
  end,
}
