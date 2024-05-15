vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.autoindent = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.shiftwidth = 4

vim.opt.expandtab = false
vim.opt.signcolumn = 'yes'

-- enable 24-bit color
vim.opt.clipboard = 'unnamedplus'

-- nvim-tree setup
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

-- bufferline setup
vim.opt.termguicolors = true
require("bufferline").setup{}
