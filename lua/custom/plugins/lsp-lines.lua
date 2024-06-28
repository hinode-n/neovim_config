vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	udpate_in_insert = true,
	underline = true,
})

return {
	"Maan2003/lsp_lines.nvim",
	dependencies = { 'neovim/nvim-lspconfig', },
	event = "BufEnter",
	config = function()
		require("lsp_lines").setup()
	end
}
