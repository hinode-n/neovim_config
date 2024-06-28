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
				theme = 'auto',
				component_separators = '|',
				section_separators = '',
				-- globalstatus = true,
			},
			sections = {
				lualine_c = { 'filename', require('auto-session.lib').current_session_name }
			},
			tabline = {
				lualine_a = {
					'buffers',
				},
				lualine_b = {},
				lualine_c = {
					{ 'navic' },
				},
				lualine_x = {
					'diff'
				},
				lualine_y = {
					'branch'
				},
				lualine_z = {
					'tabs'
				},
			},
		}
	end,

}
