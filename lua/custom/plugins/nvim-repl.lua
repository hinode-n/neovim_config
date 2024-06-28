return {
	"pappasam/nvim-repl",
	init = function()
		vim.g["repl_filetype_commands"] = {
			python = "ipython --no-autoindent",
		}
	end,
	keys = {
		{ "<leader>rt", "<cmd>ReplToggle<CR>",  desc = "[R]epl [T]oggle" },
		{ "<leader>rc", "<cmd>ReplRunCell<CR>", desc = "[R]epl run [C]ell" },
	},
}
