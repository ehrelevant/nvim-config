local defaults = { noremap = true, silent = true }

-- Map d and x (deleting motions) to blackhole registers
vim.keymap.set("n", "d", '"_d', {})
vim.keymap.set("n", "x", '"_x', {})

-- Map `dx` cutting
vim.keymap.set("n", "dx", '"+d', { desc = "Cut to Clipboard", noremap = true, silent = true })

-- Map jj to esc
vim.keymap.set("i", "jj", "<ESC>", { desc = "Switch to Normal Mode", noremap = true, silent = true })

-- Alt + up/down to move line up/down
vim.keymap.set("n", "<M-Up>", "yyddkP", defaults)
vim.keymap.set("n", "<M-Down>", "yyddp", defaults)

-- Shift + up/down to copy line up/down
vim.keymap.set("n", "<S-Up>", "yyP", defaults)
vim.keymap.set("n", "<S-Down>", "yyp", defaults)

-- use U for redo
vim.keymap.set("n", "U", "<C-r>")

-- Insert newline without entering insert mode
vim.keymap.set(
	"n",
	"<leader>o",
	':<C-u>call append(line("."), repeat([""], v:count1))<CR>',
	{ desc = "Newline Ahead", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>O",
	':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>',
	{ desc = "Newline Behind", noremap = true, silent = true }
)
vim.keymap.set("n", "<leader><CR>", "o<ESC>", { desc = "Newline and Move", noremap = true, silent = true })

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":bn<CR>", { desc = "[B]uffer Next" }) -- next
vim.keymap.set("n", "<S-h>", ":bp<CR>", { desc = "[B]uffer Previous" }) -- previous
vim.keymap.set("n", "[b", ":bn<CR>", { desc = "[B]uffer Next" }) -- next
vim.keymap.set("n", "]b", ":bp<CR>", { desc = "[B]uffer Previous" }) -- previous
vim.keymap.set("n", "<leader>bd", ":Bdelete<CR>", { desc = "[B]uffer Delete" }) -- delete

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Terminal window navigation
vim.keymap.set("t", "<c-h>", [[<c-\><c-n><c-W>h]])
vim.keymap.set("t", "<c-j>", [[<c-\><c-n><c-W>j]])
vim.keymap.set("t", "<c-k>", [[<c-\><c-n><c-W>k]])
vim.keymap.set("t", "<c-l>", [[<c-\><c-n><c-W>l]])

-- Diagnostics Keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show [D]iagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open [D]iagnostic [Q]uickfix list" })


