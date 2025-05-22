local keymap = vim.keymap.set

-- Oil
keymap('n', '<leader>e', '<cmd>Oil<cr>', { desc = 'Oil' })
-- open config with Oil
keymap(
  'n',
  '<leader>c',
  '<cmd> Oil ~/.config/nvim<cr>',
  { desc = 'NeoVim Config' }
)

-- lazy package manager
keymap('n', '<leader>ll', '<cmd>Lazy<cr>', { desc = 'Lazy Package Manager' })
keymap(
  'n',
  '<leader>lu',
  '<cmd>Lazy update<cr>',
  { desc = 'Lazy Update Packages' }
)

-- clear highlight search
keymap('n', '<esc>', '<cmd>nohlsearch<cr>')

-- diagnostic
keymap(
  'n',
  '<leader>de',
  vim.diagnostic.open_float,
  { desc = 'Show Diagnostic Errors' }
)
keymap(
  'n',
  '<leader>dq',
  vim.diagnostic.setloclist,
  { desc = 'Next Diagnostic Quick Fix' }
)

-- exit terminal mode
keymap('t', '<esc><esc>', '<C-\\><C-n>', { desc = 'Exit Terminal Mode' })

-- window navigation
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to below window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to above window' })

-- resize wndows
keymap('n', '<C-Up>', ':resize -2<CR>', { desc = 'Resize -2 UP' })
keymap('n', '<C-Down>', ':resize +2<CR>', { desc = 'Resize +2 UP' })
keymap('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Resize -2 LEFT' })
keymap('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Resize +2 LEFT' })

-- move line of text
keymap('n', '<A-j>', '<cmd>m+<cr>', { desc = 'Move Line Down' })
keymap('n', '<A-k>', '<cmd>m-2<cr>', { desc = 'Move Line Up' })

keymap('v', '<A-k>', 'xkkp', { desc = 'Move Line Up' })
keymap('v', '<A-j>', 'xp', { desc = 'Move Line Down' })
