return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		vim.keymap.set("t", "<c-h>", [[<c-\><c-n><c-W>h]])
		vim.keymap.set("t", "<c-j>", [[<c-\><c-n><c-W>j]])
		vim.keymap.set("t", "<c-k>", [[<c-\><c-n><c-W>k]])
		vim.keymap.set("t", "<c-l>", [[<c-\><c-n><c-W>l]])
		vim.keymap.set("t", "<ESC>", [[<c-\><c-n>]])

		require("toggleterm").setup({
			open_mapping = [[<c-_>]],
			direction = "horizontal",
			close_on_exit = true,
			float_opts = {
				border = "curved",
				zindex = 999,
				title_pos = "center",
			},
			persist_size = true,
			shade_terminals = true,
			shading_factor = 2,
			size = 12,
			hide_numbers = true,
			autochdir = true,
			start_in_insert = true,
			insert_mappings = true,
		})
	end,
}
