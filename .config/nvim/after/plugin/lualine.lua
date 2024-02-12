local cyberdream = require('lualine.themes.cyberdream')
require('lualine').setup {
	options = { 
		theme = 'cyberdream',
		section_separators = '',
		component_separators = '',
		ignore_focus = {
			'TelescopePrompt',
		},
	}
}
