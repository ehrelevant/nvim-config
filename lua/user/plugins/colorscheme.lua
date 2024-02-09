return {
	{
		'tanvirtin/monokai.nvim',
	},

	{
		'loctvl842/monokai-pro.nvim',
		lazy = false,
		priority = 1000, -- Load ahead of other plugins
		config = function()
			-- load colorscheme here
			vim.cmd([[colorscheme monokai-pro]])
		end,
	},
}
