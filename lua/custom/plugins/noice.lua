return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		messages = {
			view_search = false,
		},
		-- add any options here
		routes = {
			-- rust-analyzer に関するエラーメッセージを抑制する設定
			{
				filter = {
					event = "notify",  -- メッセージが表示される際に
					find = "rust_analyzer", -- メッセージ内に "rust_analyzer" が含まれている場合
				},
				opts = { skip = true }, -- メッセージをスキップ
			},
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	}
}
