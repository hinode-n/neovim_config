return {
	"SmiteshP/nvim-navic",
	event = "BufEnter",
	dependencies = {
		"neovim/nvim-lspconfig",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		lsp = {
			auto_attach = true,
		},
		highlight = true,
	},
}
