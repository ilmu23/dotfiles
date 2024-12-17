local newcppfile = vim.api.nvim_create_augroup('newcppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newcppfile,
	pattern = '*.cpp',
	callback = function()
		vim.cmd.Putheader()
	end,
	desc = 'Initialize a new .cpp file with a putchar header'
})
