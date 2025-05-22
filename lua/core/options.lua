local g = { -- vim.g._
  mapleader = ' ',
  maplocalleader = ' ',
}

local o = { -- vim.o._
  background = 'dark',
  wildmenu = true,
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
  timeoutlen = 300,
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
  confirm = true,
}

local opt = { -- vim.opt._
  listchars = { tab = '│ ', trail = '·', nbsp = '␣' },
  fillchars = { eob = ' ' },
}

for k, v in pairs(g) do
  vim.g[k] = v
end

for k, v in pairs(o) do
  vim.o[k] = v
end

for k, v in pairs(opt) do
  vim.opt[k] = v
end

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
