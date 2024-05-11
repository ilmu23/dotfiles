local newhppfile = vim.api.nvim_create_augroup('newhppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhppfile,
	pattern = '*.hpp',
	callback = function(args)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		vim.api.nvim_paste('// ███████╗████████╗     ██████╗ ██╗   ██╗████████╗ ██████╗██╗  ██╗ █████╗ ██████╗\n', true, -1)
		vim.api.nvim_paste('// ██╔════╝╚══██╔══╝     ██╔══██╗██║   ██║╚══██╔══╝██╔════╝██║  ██║██╔══██╗██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// █████╗     ██║        ██████╔╝██║   ██║   ██║   ██║     ███████║███████║██████╔╝\n', true, -1)
		vim.api.nvim_paste('// ██╔══╝     ██║        ██╔═══╝ ██║   ██║   ██║   ██║     ██╔══██║██╔══██║██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// ██║        ██║███████╗██║     ╚██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██║  ██║\n', true, -1)
		vim.api.nvim_paste('// ╚═╝        ╚═╝╚══════╝╚═╝      ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝\n', true, -1)
		vim.api.nvim_paste('//\n', true, -1)
		vim.api.nvim_paste('// <<' .. vim.fn.expand("%:t") .. '>>\n\n', true, -1)
		vim.api.nvim_paste('#ifndef ' .. guard .. '\n', true, -1)
		vim.api.nvim_paste('# define ' .. guard .. '\n\n\n#endif', true, -1)
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('kk', 'v:true', 'v:false', 'v:true'), 'm', 'v:true')
	end,
	desc = 'Initialize a new .hpp file with a putchar header and a header guard'
})
