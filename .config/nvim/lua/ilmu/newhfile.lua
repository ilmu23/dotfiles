local newhfile = vim.api.nvim_create_augroup('newhfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhfile,
	pattern = '*.h',
	callback = function(args)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		vim.cmd.Putheader()
		vim.api.nvim_buf_set_lines(0, -1, -1, 0, {
			'#ifndef ' .. guard,
			'# define ' .. guard,
			'',
			'',
			'#endif'})
		vim.api.nvim_win_set_cursor(0, {13, 0})
	end,
	desc = 'Initialize a new .h file with a putchar header'
})
