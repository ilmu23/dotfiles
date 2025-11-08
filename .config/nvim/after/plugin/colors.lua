function ReColor(color)
	color = color or 'aurora'
	vim.g.aurora_bold = 1
	vim.g.aurora_italic = 1
	vim.g.aurora_transparent = 1
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "@constant.builtin", { fg = '#e73c50' })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none" })
end

ReColor()
