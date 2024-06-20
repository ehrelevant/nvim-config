local defaults = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = ' '

-- Clipboard Keymaps to register "+"
-- vim.keymap.set({'n', 'x'}, '<leader>y', '"+y<CR>', defaults) -- Yank Motion
-- vim.keymap.set({'n', 'x'}, '<leader>Y', '"+Y<CR>', defaults) -- Yank Line

-- vim.keymap.set({'n', 'x'}, '<leader>x', '"+d<CR>', defaults) -- Cut Motion
-- vim.keymap.set({'n', 'x'}, '<leader>X', '"+D<CR>', defaults) -- Cut Line

-- vim.keymap.set({'n', 'x'}, '<leader>p', '"+p<CR>', defaults) -- Put Motion
-- vim.keymap.set({'n', 'x'}, '<leader>P', '"+P<CR>', defaults) -- Put Motion

-- map d, x, and c (deleting motions) to blackhole registers
vim.keymap.set('n', 'd', '"_d', {})
vim.keymap.set('n', 'x', '"_x', {})
vim.keymap.set('n', 'c', '"_c', {})

-- map <leader>d, <leader>x, and <leader>c to cutting
vim.keymap.set('n', '<leader>d', 'd', defaults)
vim.keymap.set('n', '<leader>x', 'x', defaults)
vim.keymap.set('n', '<leader>c', 'c', defaults)

-- map jj to esc
vim.keymap.set('i', 'jj', '<ESC>', defaults)

-- auto add closing (, [, {, ', ", <
-- vim.keymap.set('i', '(<cr>', '(<cr>)<ESC>kA<CR>', {})
-- vim.keymap.set('i', '[<cr>', '[<cr>]<ESC>kA<CR>', {})
vim.keymap.set('i', '{<cr>', '{<cr>}<ESC>kA<CR>', {})
opening_pairs = {'(', '[', '{', "'", '"', '<'}
closing_pairs = {')', ']', '}', "'", '"', '>'}
for key, chr in pairs(opening_pairs)
do
	vim.keymap.set('i', chr, chr..closing_pairs[key]..'<esc>i', {})
end

-- Alt + up/down to move line up/down
vim.keymap.set('n', '<M-Up>', 'yyddkP', defaults)
vim.keymap.set('n', '<M-Down>', 'yyddp', defaults)

-- Shift + up/down to copy line up/down
vim.keymap.set('n', '<S-Up>', 'yyP', defaults)
vim.keymap.set('n', '<S-Down>', 'yyp', defaults)

-- use U for redo
vim.keymap.set('n', 'U', '<C-r>', {})

-- Insert newline without entering insert mode
vim.keymap.set('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
vim.keymap.set('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)
vim.keymap.set('n', '<leader><CR>', 'o<ESC>', defaults)

-- switching between split windows
vim.keymap.set('n', '<C-Left>', '<C-w>h', defaults)
vim.keymap.set('n', '<C-Down>', '<C-w>j', defaults)
vim.keymap.set('n', '<C-Up>', '<C-w>k', defaults)
vim.keymap.set('n', '<C-Right>', '<C-w>l', defaults)
vim.keymap.set('n', '<C-h>', '<C-w>h', defaults)
vim.keymap.set('n', '<C-j>', '<C-w>j', defaults)
vim.keymap.set('n', '<C-k>', '<C-w>k', defaults)
vim.keymap.set('n', '<C-l>', '<C-w>l', defaults)



