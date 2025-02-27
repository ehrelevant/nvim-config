return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		routes = {
			{
				filter = {
					event = "msg_show",
					kind = "",
					find = "written",
				},
				opts = { skip = true },
			},
			{
				view = "popup",
				filter = { event = "msg_show", cmdline = true, min_height = 2 },
			},
			{
				view = "popup",
				filter = { event = "msg_show", min_height = 20 },
			},
		},
		messages = {
			enabled = true,
			view = "mini",
		},
		notify = {
			enabled = true,
		},
		cmdline = {
			view = "cmdline",
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = false,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true,
		},
	},
}
