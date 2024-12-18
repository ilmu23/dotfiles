local newhppfile = vim.api.nvim_create_augroup('newhppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhppfile,
	pattern = '*.hpp',
	callback = function(args)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		local cname = args.file:match('(.+).hpp')
		vim.cmd.Putheader()
		vim.api.nvim_buf_set_lines(0, -1, -1, 0, {
			'#ifndef ' .. guard,
			'# define ' .. guard,
			'',
			'',
			'',
			'#endif'})
		vim.api.nvim_win_set_cursor(0, {14, 0})
		if string.match(cname:sub(1, 1), "%u") then
			vim.cmd.ClassGen(vim.fn.expand('%:t'))
			vim.api.nvim_win_set_cursor(0, {18, 0})
		end
	end,
	desc = 'Initialize a new .hpp file'
})
