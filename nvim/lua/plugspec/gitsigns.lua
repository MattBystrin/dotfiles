local gs = require('gitsigns')

gs.setup{
	on_attach = function(bufnr)
		opts = opts or {}
		opts.buffer = bufnr

		-- Actions
		vim.keymap.set('n', '<leader>hn', gs.next_hunk, opts)
		vim.keymap.set('n', '<leader>hp', gs.prev_hunk, opts)
		vim.keymap.set('n', '<leader>hs', gs.stage_hunk, opts)
		vim.keymap.set('n', '<leader>hr', gs.reset_hunk, opts)

		vim.keymap.set('v', '<leader>hs', function()
			gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')}
		end, opts)

		vim.keymap.set('v', '<leader>hr', function()
			gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')}
		end, opts)

		--vim.keymap.set('n', '<leader>hS', gs.stage_buffer)
		vim.keymap.set('n', '<leader>hu', gs.undo_stage_hunk, opts)
		--vim.keymap.set('n', '<leader>hR', gs.reset_buffer)
		vim.keymap.set('n', '<leader>hl', gs.preview_hunk_inline, opts)
		vim.keymap.set('n', '<leader>hb', gs.blame_line, opts)
		--vim.keymap.set('n', '<leader>tb', gs.toggle_current_line_blame)
		--vim.keymap.set('n', '<leader>hd', gs.diffthis)
		--vim.keymap.set('n', '<leader>hD', function() gs.diffthis('~') end)
		--vim.keymap.set('n', '<leader>td', gs.toggle_deleted)
	end
}
