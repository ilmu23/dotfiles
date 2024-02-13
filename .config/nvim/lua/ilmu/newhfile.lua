local newhfile = vim.api.nvim_create_augroup('newhfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newhfile,
	pattern = '*.h',
	callback = function(args)
		vim.cmd.Stdheader()
		vim.api.nvim_paste('\n#ifndef ', true, -1)
		local guard = string.gsub(string.upper(args.file:match('[^/]+$')), '%p', '_')
		vim.api.nvim_paste(guard, true, -1)
		vim.api.nvim_paste('\n# define ', true, -1)
		vim.api.nvim_paste(guard, true, -1)
		vim.api.nvim_paste('\n# include "libft.h"\n\n\n#endif', true, -1)
		local sequence = vim.api.nvim_replace_termcodes('kkk$hhhvb<C-g>', 'v:true', 'v:false', 'v:true')
		vim.api.nvim_feedkeys(sequence, 'm', 'v:true')
	end,
	desc = 'Initialize a new .h file with the 42 header and a header guard'
})
