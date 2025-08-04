return {
		{
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
				init = function()
						-- Add border to hover documentation preview
						vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = 'single' }) end)
				end
		},
		{
				"pmizio/typescript-tools.nvim",
				dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
				opts = {},
		},
}

