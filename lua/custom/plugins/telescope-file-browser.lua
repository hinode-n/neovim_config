return{
	"nvim-telescope/telescope-file-browser.nvim",
	lazy = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim"
	},
	keys = {
		{"<leader>fb", "<cmd>Telescope file_browser<CR>", desc = "Telescope [F]ile[B]rowser"},
	},
}
