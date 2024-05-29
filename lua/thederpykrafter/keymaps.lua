local keymap = vim.keymap.set

-- Oil
keymap("n", "<leader>e", "<cmd>Oil --float<cr>", { desc = "Oil" })

-- lazy package manager
keymap("n", "<leader>ll", "<cmd>Lazygit<cr>", { desc = "Lazy Package Manager" })
keymap("n", "<leader>lu", "<cmd>Lazygit update<cr>", { desc = "Lazy Update Packages" })

-- lazygit
keymap("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- telescope
keymap("n", "<leader>ss", "<cmd>Telescope<cr>", { desc = "Search Telescope Default"})
keymap("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "Search Files"})
keymap("n", "<leader>sg", "<cmd>Telescope git_files<cr>", { desc = "Search Git Files"})
keymap("n", "<leader>sr", "<cmd>Telescope old_files<cr>", { desc = "Search Recent Files"})
keymap("n", "<leader>st", "<cmd>Telescope live_grep<cr>", { desc = "Search Text"})

-- clear highlight search
keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>")
