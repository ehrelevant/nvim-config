local defaults = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = ' '

-- Clipboard Keymaps to register "+"
vim.keymap.set({'n', 'x'}, '<leader>y', '"+y<CR>', defaults) -- Yank Motion
vim.keymap.set({'n', 'x'}, '<leader>Y', '"+Y<CR>', defaults) -- Yank Line

vim.keymap.set({'n', 'x'}, '<leader>x', '"+d<CR>', defaults) -- Cut Motion
vim.keymap.set({'n', 'x'}, '<leader>X', '"+D<CR>', defaults) -- Cut Line

vim.keymap.set({'n', 'x'}, '<leader>p', '"+p<CR>', defaults) -- Put Motion
vim.keymap.set({'n', 'x'}, '<leader>P', '"+P<CR>', defaults) -- Put Motion

-- map c and d (deleting motions) to blackhole registers
vim.keymap.set('n', 'd', '"_d', {})
vim.keymap.set('n', 'c', '"_c', {})

-- map dx to cutting (normal functionality of dd)
vim.keymap.set('n', 'dx', 'dd', defaults)

-- map jj to esc 
vim.keymap.set({'i', 'x'}, 'jj', '<ESC>', defaults)

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


-- telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope git_files<CR>', {})
vim.keymap.set('n', '<leader>fb', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>fh', ':Telescope oldfiles<CR>', {})

-- nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')
