return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-_>]], -- Equivalent to <c-/>
			direction = "float",
			float_opts = {
				border = "double",
				zindex = 999,
				title_pos = "center",
			},
		})
	end,
}
