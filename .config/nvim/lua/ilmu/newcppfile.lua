local newcppfile = vim.api.nvim_create_augroup('newcppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newcppfile,
	pattern = '*.cpp',
	callback = function()
		vim.api.nvim_paste('// ███████╗████████╗     ██████╗ ██╗   ██╗████████╗ ██████╗██╗  ██╗ █████╗ ██████╗\n', true, -1)
		vim.api.nvim_paste('// ██╔════╝╚══██╔══╝     ██╔══██╗██║   ██║╚══██╔══╝██╔════╝██║  ██║██╔══██╗██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// █████╗     ██║        ██████╔╝██║   ██║   ██║   ██║     ███████║███████║██████╔╝\n', true, -1)
		vim.api.nvim_paste('// ██╔══╝     ██║        ██╔═══╝ ██║   ██║   ██║   ██║     ██╔══██║██╔══██║██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// ██║        ██║███████╗██║     ╚██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██║  ██║\n', true, -1)
		vim.api.nvim_paste('// ╚═╝        ╚═╝╚══════╝╚═╝      ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝\n', true, -1)
		vim.api.nvim_paste('//\n', true, -1)
		vim.api.nvim_paste('// <<' .. vim.fn.expand('%:t') .. '>>\n\n', true, -1)
	end,
	desc = 'Initialize a new .cpp file with a putchar header'
})
