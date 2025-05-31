return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},

		config = function()
			local mason = require("mason")
			local mason_lsp = require("mason-lspconfig")

			mason.setup()
			mason_lsp.setup({
				automatic_enable = false,
				ensure_installed = {
					"ts_ls",
					"clangd",
					"rust_analyzer",
					"tailwindcss",
					"gopls",
					"pyright",
					"lua_ls",
					"eslint@4.8.0",
				},
				automatic_installation = true,
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			require("mason-null-ls").setup({
				ensure_installed = {
					"stylua",
					"prettierd",
					"black",
				},
			})
		end,
	},
}
