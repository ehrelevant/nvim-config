vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable relative line numbers on the side
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse
vim.opt.mouse = "a"

-- Search options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- Wrapping
vim.opt.wrap = false

-- Indentation options
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.tabstop = 4

-- Preview subsitutions
vim.opt.inccommand = "split"

-- Scroll boundaries
vim.opt.scrolloff = 5

-- Highlights cursor line
vim.opt.cursorline = true
-- Forces highlight on the cursor number instead of line
vim.opt.cursorlineopt = "number"

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldenable = false

-- Don't show mode since lualine already does that
vim.opt.showmode = false

-- Misc
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"

-- Diagnostic Signs
vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = " ",
			[vim.diagnostic.severity.WARN] = "󰌵 ",
		},
	},
	float = { border = "rounded" },
})

-- Additional filetype definitions
vim.filetype.add({
	extension = {
		purs = "purescript",
	},
})
