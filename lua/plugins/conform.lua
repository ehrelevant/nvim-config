return {
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>F",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_after_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				async = true,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff", "black", "flake8", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			php = { "php-cs-fixer" },
			purescript = { "purescript-tidy" },
			svelte = { "prettierd", "prettier", stop_after_first = true },
			c = { "clang-format" },
		},
		formatters = {
			["php-cs-fixer"] = {
				command = "php-cs-fixer",
				args = {
					"fix",
					"$FILENAME",
				},
				stdin = false,
			},
			["purescript-tidy"] = {
				command = "purs-tidy",
				args = {
					"format",
				},
				stdin = true,
			},
		},
	},
}
