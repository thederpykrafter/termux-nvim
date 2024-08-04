local keymap = vim.keymap.set

-- dashboard
keymap('n', '<leader>;', '<cmd>Dashboard<CR>', { desc = 'Dashboard' })

-- Oil
keymap("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Oil" })
-- open config with Oil
keymap("n", "<leader>c", "<cmd> Oil ~/.config/nvim<cr>", { desc = "NeoVim Config"})

-- lazy package manager
keymap("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy Package Manager" })
keymap("n", "<leader>lu", "<cmd>Lazy update<cr>", { desc = "Lazy Update Packages" })

-- lazygit
keymap("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- telescope
keymap("n", "<leader><leader>", "<cmd>Telescope buffers<cr>", { desc = "Search Open Buffers" })
keymap("n", "<leader>ss", "<cmd>Telescope<cr>", { desc = "Search Telescope Default" })
keymap("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "Search Files" })
keymap("n", "<leader>sg", "<cmd>Telescope git_files<cr>", { desc = "Search Git Files" })
keymap("n", "<leader>sr", "<cmd>Telescope old_files<cr>", { desc = "Search Recent Files" })
keymap("n", "<leader>st", "<cmd>Telescope live_grep<cr>", { desc = "Search Text" })

local builtin = require('telescope.builtin')

keymap('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'Fuzzily search in current buffer' })

keymap('n', '<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = 'Search in Open Files' })

keymap('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Search Neovim files' })

-- clear highlight search
keymap("n", "<esc>", "<cmd>nohlsearch<cr>")

-- diagnostic
keymap("n", "<leader>de", "vim.diagnostic.open_float", { desc = "Show Diagnostic Errors"})
keymap("n", "<leader>dq", "vim.diagnostic.setloclist", { desc = "Next Diagnostic Quick Fix"})

-- exit terminal mode
keymap("n", "<esc><esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" })

-- window navigation
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to left window"})
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to right window"})
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to below window"})
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to above window"})

-- resize wndows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- move line of text
keymap("n", "<A-j>", "<cmd>m-2<cr>", { desc = "Move Line Down"})
keymap("v", "<A-j>", "ddjp", { desc = "Move Line Down"})
keymap("n", "<A-k>", "<cmd>m+<cr>", { desc = "Move Line Up"})
keymap("v", "<A-k>", "ddkp", { desc = "Move Line Up"})
