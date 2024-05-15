local newhppfile = vim.api.nvim_create_augroup('newhppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhppfile,
	pattern = '*.hpp',
	callback = function(args)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		local cname = vim.fn.expand('%:t1'):match('(.+).hpp')
		vim.api.nvim_paste('// ███████╗████████╗     ██████╗ ██╗   ██╗████████╗ ██████╗██╗  ██╗ █████╗ ██████╗\n', true, -1)
		vim.api.nvim_paste('// ██╔════╝╚══██╔══╝     ██╔══██╗██║   ██║╚══██╔══╝██╔════╝██║  ██║██╔══██╗██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// █████╗     ██║        ██████╔╝██║   ██║   ██║   ██║     ███████║███████║██████╔╝\n', true, -1)
		vim.api.nvim_paste('// ██╔══╝     ██║        ██╔═══╝ ██║   ██║   ██║   ██║     ██╔══██║██╔══██║██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// ██║        ██║███████╗██║     ╚██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██║  ██║\n', true, -1)
		vim.api.nvim_paste('// ╚═╝        ╚═╝╚══════╝╚═╝      ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝\n', true, -1)
		vim.api.nvim_paste('//\n', true, -1)
		vim.api.nvim_paste('// <<' .. vim.fn.expand("%:t") .. '>>\n\n', true, -1)
		vim.api.nvim_paste('#ifndef ' .. guard .. '\n', true, -1)
		vim.api.nvim_paste('# define ' .. guard .. '\n\n', true, -1)
		vim.api.nvim_paste('class ' .. cname .. '\n', true, -1)
		vim.api.nvim_paste('{\n\tprivate:\n\n\tpublic:\n\n', true, -1)
		vim.api.nvim_paste('\t\t' .. cname .. '(void);\n', true, -1)
		vim.api.nvim_paste('\t\t' .. cname .. '(const ' .. cname .. ' &copy);\n', true, -1)
		vim.api.nvim_paste('\t\t' .. cname .. ' &operator=(const ' .. cname .. ' &copy);\n', true, -1)
		vim.api.nvim_paste('\t\t~' .. cname .. '(void);\n};\n\n', true, -1)
		vim.api.nvim_paste('#endif', true, -1)
		vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('kkkkkkkkkkkkk', 'v:true', 'v:false', 'v:true'), 'm', 'v:true')
	end,
	desc = 'Initialize a new .hpp file with a putchar header and a header guard'
})
