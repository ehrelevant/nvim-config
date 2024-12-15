return {
	"petertriho/nvim-scrollbar",
	dependencies = {
		"lewis6991/gitsigns.nvim",
	},
	config = function()
		require("scrollbar").setup({
			excluded_filetypes = {
				"neo-tree",
			},
		})
		require("scrollbar.handlers.gitsigns").setup()
	end,
}
