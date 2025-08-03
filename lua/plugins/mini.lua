return {
		'echasnovski/mini.nvim',
		version = false,
		config = function()
				require('mini.ai').setup()
				require('mini.bracketed').setup()
				require('mini.move').setup()
				require('mini.operators').setup()
				require('mini.pairs').setup()
				require('mini.statusline').setup()
				require('mini.surround').setup()

				-- require('mini.trailspace').setup()
				-- vim.keymap.set('n', '<leader>tst', function() require('mini.trailspace').trim() end, { desc = '[t]railing [s]pace [t]rim' })
		end
}
