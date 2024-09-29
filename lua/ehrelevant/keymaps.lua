local defaults = { noremap = true, silent = true }

-- map d and x (deleting motions) to blackhole registers
vim.keymap.set('n', 'd', '"_d', {})
vim.keymap.set('n', 'x', '"_x', {})

-- map <leader>d and <leader>x to cutting
vim.keymap.set('n', '<leader>d', 'd', defaults)
vim.keymap.set('n', '<leader>x', 'x', defaults)

-- map jj to esc
vim.keymap.set('i', 'jj', '<ESC>', defaults)

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

-- Buffers
vim.keymap.set('n', '<leader>bl', ':bn<CR>', { desc = '[B]uffer Next' }) -- next
vim.keymap.set('n', '<leader>bh', ':bp<CR>', { desc = '[B]uffer Previous' }) -- previous
vim.keymap.set('n', '<leader>bx', ':bd<CR>', { desc = '[B]uffer Delete' }) -- delete

