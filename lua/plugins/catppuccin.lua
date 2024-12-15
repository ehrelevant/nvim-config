return {
	"catppuccin/nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			no_italic = true,
			custom_highlights = function(colors)
				return {
					FloatBorder = { bg = colors.mantle },
					NeoTreeWinSeparator = { fg = colors.mantle, bg = colors.mantle },
				}
			end,
		})
	end,
	init = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}
