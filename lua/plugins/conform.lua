return {
		'stevearc/conform.nvim',
		opts = {},
		keys = {
				{
						'<leader>F',
						function()
								require('conform').format({
										async = true,
										lsp_fallback = true,
								})
						end,
						mode = 'n',
						desc = '[F]ormat Buffer'
				}
		}
}
