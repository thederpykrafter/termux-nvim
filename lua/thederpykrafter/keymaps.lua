local keymap = vim.keymap.set

-- dashboard
keymap(
	"n",
	"<leader>;",
	"<cmd>Dashboard<CR>",
	{ desc = "Dashboard" }
)

-- Oil
keymap("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Oil" })
-- open config with Oil
keymap(
	"n",
	"<leader>c",
	"<cmd> Oil ~/.config/nvim<cr>",
	{ desc = "NeoVim Config" }
)

-- lazy package manager
keymap(
	"n",
	"<leader>ll",
	"<cmd>Lazy<cr>",
	{ desc = "Lazy Package Manager" }
)
keymap(
	"n",
	"<leader>lu",
	"<cmd>Lazy update<cr>",
	{ desc = "Lazy Update Packages" }
)

-- lazygit
keymap(
	"n",
	"<leader>gg",
	"<cmd>LazyGit<cr>",
	{ desc = "LazyGit" }
)

-- telescope
local builtin = require("telescope.builtin")
keymap(
	"n",
	"<leader>sh",
	builtin.help_tags,
	{ desc = "[S]earch [H]elp" }
)
keymap(
	"n",
	"<leader>sc",
	builtin.command_history,
	{ desc = "[S]earch [C]ommand history" }
)
keymap(
	"n",
	"<leader>sk",
	builtin.keymaps,
	{ desc = "[S]earch [K]eymaps" }
)
keymap(
	"n",
	"<leader>sf",
	builtin.find_files,
	{ desc = "[S]earch [F]iles" }
)
keymap(
	"n",
	"<leader>ss",
	builtin.builtin,
	{ desc = "[S]earch [S]elect Telescope" }
)
keymap(
	"n",
	"<leader>sw",
	builtin.grep_string,
	{ desc = "[S]earch current [W]ord" }
)
keymap(
	"n",
	"<leader>sg",
	builtin.live_grep,
	{ desc = "[S]earch by [G]rep" }
)
keymap(
	"n",
	"<leader>sG",
	builtin.git_files,
	{ desc = "[S]earch in [G]it project" }
)
keymap(
	"n",
	"<leader>sd",
	builtin.diagnostics,
	{ desc = "[S]earch [D]iagnostics" }
)
keymap(
	"n",
	"<leader>sr",
	builtin.resume,
	{ desc = "[S]earch [R]esume" }
)
keymap(
	"n",
	"<leader>s.",
	builtin.oldfiles,
	{ desc = '[S]earch Recent Files ("." for repeat)' }
)
keymap(
	"n",
	"<leader><leader>",
	builtin.buffers,
	{ desc = "Find existing buffers" }
)

local builtin = require("telescope.builtin")

keymap(
	"n",
	"<leader>/",
	function()
		builtin.current_buffer_fuzzy_find(
			require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			})
		)
	end,
	{ desc = "Fuzzily search in current buffer" }
)

keymap(
	"n",
	"<leader>s/",
	function()
		builtin.live_grep({
			grep_open_files = true,
			prompt_title = "Live Grep in Open Files",
		})
	end,
	{ desc = "Search in Open Files" }
)

keymap(
	"n",
	"<leader>sn",
	function()
		builtin.find_files({ cwd = vim.fn.stdpath("config") })
	end,
	{ desc = "[S]earch [N]eovim config files" }
)

-- todo comments
keymap(
	"n",
	"<leader>st",
	"<cmd>TodoTelescope<cr>",
	{ desc = "[S]earch [T]odo Telescope" }
)
keymap(
	"n",
	"<leader>sl",
	"<cmd>TodoLocList<cr>",
	{ desc = "[S]earch Todo [L]ocList" }
)

-- clear highlight search
keymap("n", "<esc>", "<cmd>nohlsearch<cr>")

-- diagnostic
keymap(
	"n",
	"<leader>de",
	"vim.diagnostic.open_float",
	{ desc = "Show Diagnostic Errors" }
)
keymap(
	"n",
	"<leader>dq",
	"vim.diagnostic.setloclist",
	{ desc = "Next Diagnostic Quick Fix" }
)

-- exit terminal mode
keymap(
	"n",
	"<esc><esc>",
	"<C-\\><C-n>",
	{ desc = "Exit Terminal Mode" }
)

-- window navigation
keymap(
	"n",
	"<C-h>",
	"<C-w><C-h>",
	{ desc = "Move focus to left window" }
)
keymap(
	"n",
	"<C-l>",
	"<C-w><C-l>",
	{ desc = "Move focus to right window" }
)
keymap(
	"n",
	"<C-j>",
	"<C-w><C-j>",
	{ desc = "Move focus to below window" }
)
keymap(
	"n",
	"<C-k>",
	"<C-w><C-k>",
	{ desc = "Move focus to above window" }
)

-- resize wndows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- move line of text
keymap("n", "<A-j>", "<cmd>m+<cr>", { desc = "Move Line Down" })
keymap("n", "<A-k>", "<cmd>m-2<cr>", { desc = "Move Line Up" })

keymap("v", "<A-k>", "xkp", { desc = "Move Line Up" })
keymap("v", "<A-j>", "xp", { desc = "Move Line Down" })
