local newcppfile = vim.api.nvim_create_augroup('newcppfile', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('BufNewFile', {
	group = newcppfile,
	pattern = '*.cpp',
	callback = function(args)
		vim.cmd.Putheader()
		if string.match(args.file:sub(1, 1), "%u") then
			vim.cmd.ClassGen(args.file)
		end
	end,
	desc = 'Initialize a new .cpp file'
})
