return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
	config = function()
		local actions = require("telescope.actions")
		local open_with_trouble = require("trouble.sources.telescope").open

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = "which_key",
						["<C-t>"] = open_with_trouble,
					},
					n = {
						["<C-t>"] = open_with_trouble,
						["<C-d>"] = actions.delete_buffer,
					},
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope [F]ind [F]iles" })
		vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Telescope [C]ommands" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live [G]rep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope [B]uffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope [H]elp Tags" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope [D]iagnostics" })
		vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, { desc = "Telescope Fuzzy [S]earch" })
	end,
}
