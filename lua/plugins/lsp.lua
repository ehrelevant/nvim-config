return {
		'mason-org/mason-lspconfig.nvim',
		dependencies = {
				{
						'mason-org/mason.nvim',
						event = 'VeryLazy',
						opts = {},
				},
				'neovim/nvim-lspconfig',
				'saghen/blink.cmp',
		},
		opts = {},
}

