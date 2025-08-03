return {
		'saghen/blink.cmp',
		event = 'VeryLazy',
		dependencies = {
				'rafamadriz/friendly-snippets',
		},
		version = '1.*',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
				completion = {
						documentation = {
								auto_show = true,
								window = {
										border = 'single',
								},
						},
						menu = {
								border = 'single',
						},
						ghost_text = {
								enabled = true,
						},
				},
				cmdline = {
						completion = {
								menu = {
										auto_show = function(ctx)
												-- Only auto-complete for commands
												return vim.fn.getcmdtype() == ':'
										end,
								}
						}
				},
				sources = {
						default = { 'lsp', 'path', 'snippets', 'buffer', 'cmdline' },
				},
		},
		opts_extend = { 'sources.default' },
}

