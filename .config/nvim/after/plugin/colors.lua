function ReColor(color)
	color = color or 'bluloco'
	require('bluloco').setup({
		style = 'dark',
		italics = false,
		guicursor = true,
	})
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
end

ReColor()
