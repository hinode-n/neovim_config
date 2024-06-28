return {
	"saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	dependencies = { "nvim-lua/plenary.nvim" },
	tag = "stable",
	config = function()
		require("crates").setup {
			src = {
				cmp = {
					enabled = true,
				},
			},
		}
	end,
}
