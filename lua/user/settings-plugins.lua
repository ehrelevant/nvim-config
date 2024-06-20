-- telescope setup
require('telescope').setup({
	pickers = {
		find_files = {
			theme = 'dropdown',
		},
		live_grep = {
			theme = 'dropdown',
		},
		help_tags = {
			theme = 'dropdown',
		}
	}
})


-- nvim-tree setup
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup({
	renderer = {
        add_trailing = false,
        -- group_empty = false,
        -- highlight_git = false,
        full_name = false,
        highlight_opened_files = "all",
        highlight_modified = "none",
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        indent_markers = {
            enable = true,
            inline_arrows = true,
            icons = {
                corner = "└",
                edge = "│",
                item = "│",
                bottom = "─",
                none = " ",
            },
        },
    }
})

-- bufferline setup
vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
		-- separator_style = "slant",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			}
		}
	}
})
