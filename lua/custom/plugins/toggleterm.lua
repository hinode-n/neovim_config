return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = true,
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "[T]oogle [T]erm" },
		{ "<ESC>",      "<C-\\><C-n>",         desc = "change to NORMAL mode", mode = "t" },
	},
}
