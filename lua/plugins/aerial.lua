return {
		'stevearc/aerial.nvim',
		dependencies = {
				'nvim-treesitter/nvim-treesitter',
				'nvim-tree/nvim-web-devicons',
		},
		config = function()
				require('aerial').setup({
						layout = {
								width = 15,
						},
						on_attach = function(buffer)
								-- Jump forwards/backwards with '{' and '}'
								vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = buffer })
								vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = buffer })
						end,
				})

				vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>', { desc = '[A]erial Toggle'})
		end
}
