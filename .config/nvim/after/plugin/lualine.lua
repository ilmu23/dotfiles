require('lualine').setup {
	options = {
		theme = 'auto',
		section_separators = '',
		component_separators = '',
		ignore_focus = {
			'TelescopePrompt',
		},
	},
	inactive_sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { 'filename' },
		lualine_x = { 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' }
	}
}
