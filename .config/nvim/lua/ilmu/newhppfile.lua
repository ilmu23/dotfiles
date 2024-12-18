local newhppfile = vim.api.nvim_create_augroup('newhppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhppfile,
	pattern = '*.hpp',
	callback = function(args)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		local cname = vim.fn.expand('%:t1'):match('(.+).hpp')
		vim.cmd.Putheader()
		vim.api.nvim_buf_set_lines(0, -1, -1, 0, {
			'#ifndef ' .. guard,
			'# define ' .. guard,
			'',
			'',
			'class ' .. cname,
			'{',
			'\tprivate:',
			'',
			'',
			'\tpublic:',
			'\t\t' .. cname .. '(void);',
			'\t\t' .. cname .. '(const ' .. cname .. ' &copy);',
			'\t\t' .. cname .. '&operator=(const ' .. cname .. ' &copy);',
			'\t\t~' .. cname .. '(void);',
			'};',
			'',
			'#endif'})
		vim.api.nvim_win_set_cursor(0, {18, 0})
	end,
	desc = 'Initialize a new .hpp file with a putchar header, header guard and class template'
})
