local newcfile = vim.api.nvim_create_augroup('newcfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newcfile,
	pattern = '*.c',
	callback = function()
		vim.cmd.Stdheader()
		vim.api.nvim_paste('\n#include "libft.h"', true, -1)
		local sequence = vim.api.nvim_replace_termcodes('hhhvb<C-g>', 'v:true', 'v:false', 'v:true')
		vim.api.nvim_feedkeys(sequence, 'm', 'v:true')
	end,
	desc = 'Initialize a new .c file with the 42 header and a libft include'
})
