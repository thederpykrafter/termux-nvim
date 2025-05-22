local options = {
  background = 'dark',
  wildmenu = true,
  clipboard = 'unnamedplus',
  completeopt = 'noinsert,menuone,noselect',
  hlsearch = true,
  ignorecase = true,
  mouse = 'a',
  showmode = false,
  showtabline = 1,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  inccommand = 'split',
  swapfile = false,
  termguicolors = true,
  timeoutlen = 100,
  undofile = true,
  updatetime = 250,
  expandtab = false,
  shiftwidth = 2,
  tabstop = 2,
  breakindent = true,
  cursorline = true,
  hidden = true,
  number = true,
  relativenumber = true,
  numberwidth = 2,
  signcolumn = 'yes',
  scrolloff = 10,
  list = true,
  listchars = { tab = '│ ', trail = '·', nbsp = '␣' },
  fillchars = { eob = ' ' },
}

local globals = {
  mapleader = ' ',
  maplocalleader = ' ',
}

for k, v in pairs(globals) do
  vim.g[k] = v
end

for k, v in pairs(options) do
  vim.opt[k] = v
end
