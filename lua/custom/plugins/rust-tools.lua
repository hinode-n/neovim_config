local function on_attach(client, buffer)
	local keymap_opts = { buffer = buffer }
	-- Code navigation and shortcuts
	vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
	vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts)
	vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
	vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
	vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
	vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
	vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
	vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { buffer = buffer, desc = "[C]ode [R]ename" })

	-- Show diagnostic popup on cursor hover
	-- local diag_float_grp = vim.api.nvim_create_augroup("DiagnosticFloat", { clear = true })
	-- vim.api.nvim_create_autocmd("CursorHold", {
	-- 	callback = function()
	-- 		vim.diagnostic.open_float(nil, { focusable = false })
	-- 	end,
	-- 	group = diag_float_grp,
	-- })

	local rt = require("rust-tools")
	-- Code action groups
	vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group,
		{ buffer = buffer, desc = "Rust [C]ode [A]ction Group" })

	-- Goto previous/next diagnostic warning/error
	vim.keymap.set("n", "g[", vim.diagnostic.goto_prev, keymap_opts)
	vim.keymap.set("n", "g]", vim.diagnostic.goto_next, keymap_opts)
end


return {
	"simrat39/rust-tools.nvim",
	ft = { "rust", "rs" },
	dependencies = { "mfussenegger/nvim-dap", "nvim-lua/plenary.nvim" },
	opts = function()
		local mason_registry = require("mason-registry")
		-- Update this path
		local extension_path = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
		-- local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.6.7/'
		local codelldb_path = extension_path .. 'adapter/codelldb'
		local liblldb_path = extension_path .. 'lldb/lib/liblldb'
		local this_os = vim.loop.os_uname().sysname;

		-- The path in windows is different
		if this_os:find "Windows" then
			codelldb_path = extension_path .. "adapter\\codelldb.exe"
			liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
		else
			-- The liblldb extension is .so for linux and .dylib for macOS
			liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
		end


		return {
			tools = {
				runnables = {
					use_telescope = true,
				},
			},
			server = {
				on_attach = on_attach,
				settings = {
					["rust-analyzer"] = {
						checkOnSave = {
							enable = true,
							command = "clippy",
						},
						autoreload = true,
						cargo = {
							allFeatures = true,
						},
					},
				},
			},
			dap = {
				adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		}
	end,
	-- opts = opts,
	-- opts = {
	-- 	tools = {
	-- 		runnables = {
	-- 			use_telescope = true,
	-- 		},
	-- 	},
	-- 	server = {
	-- 		on_attach = on_attach,
	-- 		settings = {
	-- 			["rust-analyzer"] = {
	-- 				checkOnSave = {
	-- 					enable = true,
	-- 					command = "clippy",
	-- 				},
	-- 				autoreload = true,
	-- 				cargo = {
	-- 					allFeatures = true,
	-- 				},
	-- 			},
	-- 		},
	-- 	},
	-- },
	-- keys = {
	-- 	{ "<leader>a", "<cmd>RustCodeAction<CR>", desc = "RustCode[A]ction" },
	-- },
}
