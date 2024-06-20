local defaults = { noremap = true, silent = true }

-- buffers
vim.keymap.set('n', '<leader>bl', ':bn<CR>') -- next
vim.keymap.set('n', '<leader>bh', ':bp<CR>') -- previous
vim.keymap.set('n', '<leader>bx', ':bd<CR>') -- delete

-- telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', {})
vim.keymap.set('n', '<leader>fg', ':Telescope git_files<CR>', {})
vim.keymap.set('n', '<leader>fb', ':Telescope live_grep<CR>', {})
vim.keymap.set('n', '<leader>fh', ':Telescope oldfiles<CR>', {})

-- nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')

-- markdown-preview
vim.keymap.set('n', '<leader>mp', ':MarkdownPreviewToggle<CR>')

-- nvim-comment
vim.keymap.set({'n', 'v'}, '<leader>/', ':CommentToggle<CR>')

