return{
	"nvim-telescope/telescope-frecency.nvim",
	lazy = false,
	config = function ()
		require("telescope").load_extension "frecency"
	end,
	keys = {
		{"<leader><leader>", "<cmd>Telescope frecency<CR>"}
	},
}
