return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			no_italic = true,
		})
	end,
	init = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
