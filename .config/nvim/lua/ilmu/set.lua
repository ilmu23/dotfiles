vim.opt.guicursor = ''

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.colorcolumn = '81'

vim.opt.updatetime = 50

vim.opt.showmode = false

vim.g.c_syntax_for_h = 1
vim.g.c_functions = 1
vim.g.c_function_pointers = 1

local header = require('42header')
header.setup({
	lengt = 80,
	margin = 5,
	default_map = true,
	auto_update = true,
	user = 'ivalimak',
	mail = 'ivalimak@student.hive.fi',
})
