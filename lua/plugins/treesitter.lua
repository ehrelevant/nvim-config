return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"diff",
				"c",
				"lua",
				"luadoc",
				"vim",
				"vimdoc",
				"markdown",
				"markdown_inline",
				"toml",
				"yaml",
				"xml",
				"python",
				"html",
				"javascript",
				"typescript",
				"jsdoc",
				"json",
				"jsonc",
				"svelte",
				"julia",
				"php",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
		require("nvim-treesitter.install").prefer_git = true
	end,
}
