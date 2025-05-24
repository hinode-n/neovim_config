if vim.g.neovide then
	---- ディスプレイの設定
	-- フォントの設定
	-- vim.o.guifont = "JetBrainsMono Nerd Font:h20"
	-- リフレッシュレート
	vim.g.neovide_refresh_rate = 60
	-- フォーカスされていないときのリフレッシュ レート
	vim.g.neovide_refresh_rate_idle = 5

	-- 行間
	vim.opt.linespace = 0
	-- スケール：拡大率
	vim.g.neovide_scale_factor = 1.0
	-- パディング
	vim.g.neovide_padding_top = 0
	vim.g.neovide_padding_bottom = 0
	vim.g.neovide_padding_right = 0
	vim.g.neovide_padding_left = 0
end
