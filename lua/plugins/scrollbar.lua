return {
	"petertriho/nvim-scrollbar",
	dependencies = {
		"lewis6991/gitsigns.nvim",
	},
	config = function()
		require("scrollbar").setup({
			excluded_filetypes = {
				"neo-tree",
				"aerial",
			},
		})
		require("scrollbar.handlers.gitsigns").setup()
	end,
}
