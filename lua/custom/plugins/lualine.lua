return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	lazy = false,
	dependencies = { "SmiteshP/nvim-navic", "rmagatti/auto-session" },
	config = function()
		require('lualine').setup {
			options = {
				icons_enabled = true,
				theme = 'codedark',
				component_separators = { left = '', right = '' },
				section_separators = { left = '', right = '' },
				-- globalstatus = true,
			},
			sections = {
				lualine_c = { 'filename', require('auto-session.lib').current_session_name },
				lualine_z = { {
					function()
						return os.date('%Y-%m-%d（%a） %H:%M') -- 年月日と時刻を表示
					end,
				} }
			},
			tabline = {
				lualine_a = {
					'buffers',
				},
				lualine_b = {},
				lualine_c = {
					{ 'navic' },
				},
				lualine_z = {
					'tabs'
				},
			},
		}
	end,

}
