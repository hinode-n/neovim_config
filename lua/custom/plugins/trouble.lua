return {
	"folke/trouble.nvim",
	event = "BufEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<CR>",                       desc = "TroubleToggle" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "TroubleToggle workspace_diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>",  desc = "TroubleToggle document_diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<CR>",              desc = "TroubleToggle quickfix" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<CR>",               desc = "TroubleToggle loclist" },
		{ "gR",         "<cmd>TroubleToggle lsp_reference<CR>",         desc = "TroubleToggle lsp_reference" },
	},
}
