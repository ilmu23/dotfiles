vim.api.nvim_create_user_command('ClassGen',
	function(opts)
		local cname = opts.fargs[1]
		local ftype = opts.fargs[2]
		local cpos = vim.api.nvim_win_get_cursor(0)
		if cname:find('.cpp') then
			cname = cname:gsub('.cpp', '')
			ftype = 'c'
		elseif cname:find('.hpp') then
			cname = cname:gsub('.hpp', '')
			ftype = 'h'
		end
		if ftype == nil then
			local fname = vim.fn.expand('%:t')
			if fname:find('.cpp') then
				ftype = 'c'
			elseif fname:find('.hpp') then
				ftype = 'h'
			end
		end
		if ftype == 'c' or ftype == 'C' or ftype == 'cpp' then
			vim.api.nvim_buf_set_lines(0, cpos[1], cpos[1], 0, {
				cname .. '::' .. cname .. '(void) {}',
				'',
				cname .. '::' .. cname .. '(const ' .. cname .. ' &copy): ' .. cname .. '()',
				'{',
				'\t*this = copy;',
				'}',
				'',
				cname .. '&' .. cname .. '::operator=(const ' .. cname .. ' &copy)',
				'{',
				'\treturn *this;',
				'}',
				'',
				cname .. '::~' .. cname .. '(void) {}'
			})
		elseif ftype == 'h' or ftype == 'H' or ftype == 'hpp' then
			vim.api.nvim_buf_set_lines(0, cpos[1], cpos[1], 0, {
				'class ' .. cname,
				'{',
				'\tprivate:',
				'',
				'',
				'\tpublic:',
				'\t\t' .. cname .. '(void);',
				'\t\t' .. cname .. '(const ' .. cname .. ' &copy);',
				'\t\t' .. cname .. '&operator=(const ' .. cname .. ' &copy);',
				'\t\t~' .. cname .. '(void);',
				'};'
			})
		end
	end,
	{
		nargs = '+'
	}
)
