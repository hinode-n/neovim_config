return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
		})
		local Terminal = require('toggleterm.terminal').Terminal
		local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "[T]oogle [T]erm" },
		{ "<ESC>",      "<C-\\><C-n>",         desc = "change to NORMAL mode", mode = "t" },
	},
}
