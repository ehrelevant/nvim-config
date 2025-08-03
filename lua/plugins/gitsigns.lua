return {
		'lewis6991/gitsigns.nvim',
		config = function()
				require('gitsigns').setup({
						on_attach = function(bufnr)
								local gitsigns = require('gitsigns')

								-- Navigate between hunks
								vim.keymap.set('n', ']h', function ()
										if vim.wo.diff then
												vim.cmd.normal({ ']h', bang = true })
										else
												gitsigns.nav_hunk('next')
										end
								end, {
										desc = 'Next hunk'
								})
								vim.keymap.set('n', '[h', function ()
										if vim.wo.diff then
												vim.cmd.normal({ '[h', bang = true })
										else
												gitsigns.nav_hunk('prev')
										end
								end, {
										desc = 'Previous hunk'
								})

								vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage hunk' })
								vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset hunk' })
								vim.keymap.set('v', '<leader>hs', function()
										gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
								end, { desc = 'Stage hunk (Visual)' })

								vim.keymap.set('v', '<leader>hr', function()
										gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
								end, { desc = 'Reset hunk (Visual)' })

								vim.keymap.set('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Stage buffer' })
								vim.keymap.set('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Reset buffer' })
								vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk' })
								vim.keymap.set('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = 'Preview hunk (inline)' })

								vim.keymap.set('n', '<leader>hb', function()
										gitsigns.blame_line({ full = true })
								end, { desc = 'Show blame for line' })

								vim.keymap.set('n', '<leader>hd', gitsigns.diffthis, { desc = 'Show diff for line' })

								vim.keymap.set('n', '<leader>hD', function()
										gitsigns.diffthis('~')
								end, { desc = 'Show diff for line against prev commit' })

								-- Toggles
								vim.keymap.set('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle current line blame' })
								vim.keymap.set('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = 'Toggle word diff'})
						end
				})
		end
}
