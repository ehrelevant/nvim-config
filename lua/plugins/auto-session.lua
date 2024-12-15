return {
	"rmagatti/auto-session",
	lazy = false,
	keys = {
		-- Will use Telescope if installed or a vim.ui.select picker otherwise
		{ "<leader>wr", "<cmd>SessionSearch<CR>", desc = "Session search" },
		{ "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session" },
		{ "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
	},
	init = function()
		vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
	end,
	opts = {
		suppressed_dirs = { "~/", "~/downloads/", "~/programs", "/" },
		bypass_save_filetypes = { "neo-tree" },
		pre_save_cmds = {
			"Neotree close",
		},
		post_restore_cmds = {
			"Neotree show filesystem",
		},
		session_lens = {
			load_on_setup = true,
			mappings = {
				delete_session = { "i", "<C-D>" },
				alternate_session = { "i", "<C-S>" },
				copy_session = { "i", "<C-Y>" },
			},
			theme_conf = {
				border = true,
			},
		},
	},
}
