local defaults = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = ' '

-- Clipboard Keymaps
--[[ 
vim.keymap.set({'n', 'x'}, '<leader>y', '"+y', defaults) -- Yank Motion
vim.keymap.set({'n', 'x'}, '<leader>Y', '"+Y', defaults) -- Yank Line

vim.keymap.set({'n', 'x'}, '<leader>x', '"+d', defaults) -- Cut Motion
vim.keymap.set({'n', 'x'}, '<leader>X', '"+D', defaults) -- Cut Line

vim.keymap.set({'n', 'x'}, '<leader>p', '"+p', defaults) -- Put Motion
--]]

vim.keymap.set({'i'}, 'jk', '<ESC>')
