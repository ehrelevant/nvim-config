return {
		"folke/persistence.nvim",
		event = "BufReadPre",
		config = function() 
				local persistence = require('persistence').setup()

				-- Load the session for the current directory
				vim.keymap.set("n", "<leader>qs", function() persistence.load() end, { desc = 'Load session for current directory' })

				-- Select a session to load
				vim.keymap.set("n", "<leader>qS", function() persistence.select() end, { desc = 'Select session to load' })

				-- Load the last session
				vim.keymap.set("n", "<leader>ql", function() persistence.load({ last = true }) end, { desc = 'Load last session' })

				-- Stop Persistence (session won't be saved on exit)
		    	vim.keymap.set("n", "<leader>qd", function() persistence.stop() end, { desc = 'Stop persistence' })

				-- Save only certain buffers (particularly, don't save explorer)
				vim.opt.sessionoptions = "buffers,curdir,tabpages,winsize,help,globals,skiprtp,folds"
		end
}
