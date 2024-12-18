local newcfile = vim.api.nvim_create_augroup('newcfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newcfile,
	pattern = '*.c',
	callback = function()
		vim.cmd.Putheader()
	end,
	desc = 'Initialize a new .c file'
})
