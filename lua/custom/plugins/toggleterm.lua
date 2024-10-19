return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
		})
	end,
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "[T]oogle [T]erm" },
		{ "<ESC>",      "<C-\\><C-n>",         desc = "change to NORMAL mode", mode = "t" },
	},
}
