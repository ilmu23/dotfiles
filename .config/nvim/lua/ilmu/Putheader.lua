vim.api.nvim_create_user_command('Putheader',
	function()
		vim.api.nvim_input('gg')
		vim.api.nvim_paste('// ███████╗████████╗     ██████╗ ██╗   ██╗████████╗ ██████╗██╗  ██╗ █████╗ ██████╗\n', true, -1)
		vim.api.nvim_paste('// ██╔════╝╚══██╔══╝     ██╔══██╗██║   ██║╚══██╔══╝██╔════╝██║  ██║██╔══██╗██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// █████╗     ██║        ██████╔╝██║   ██║   ██║   ██║     ███████║███████║██████╔╝\n', true, -1)
		vim.api.nvim_paste('// ██╔══╝     ██║        ██╔═══╝ ██║   ██║   ██║   ██║     ██╔══██║██╔══██║██╔══██╗\n', true, -1)
		vim.api.nvim_paste('// ██║        ██║███████╗██║     ╚██████╔╝   ██║   ╚██████╗██║  ██║██║  ██║██║  ██║\n', true, -1)
		vim.api.nvim_paste('// ╚═╝        ╚═╝╚══════╝╚═╝      ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝\n', true, -1)
		vim.api.nvim_paste('//\n', true, -1)
		vim.api.nvim_paste('// <<' .. vim.fn.expand('%:t') .. '>>\n\n', true, -1)
		vim.api.nvim_input('G')
	end,
	{})
