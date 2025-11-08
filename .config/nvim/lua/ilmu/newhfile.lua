local newhfile = vim.api.nvim_create_augroup('newhfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhfile,
	pattern = '*.h',
	callback = function(args)
		vim.cmd.Putheader()
		vim.api.nvim_buf_set_lines(0, -1, -1, 0, {'#pragma once'})
		vim.api.nvim_win_set_cursor(0, {10, 0})
	end,
	desc = 'Initialize a new .h file'
})
