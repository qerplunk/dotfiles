return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"html",
				"htmldjango",
				"css",
				"c",
				"cpp",
				"go",
				"lua",
				"rust",
				"python",
				"javascript",
				"typescript",
				"tsx",
				"markdown",
				"vimdoc",
			},
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			autopairs = {
				enable = true,
			},
			indent = {
				enable = true,
				disable = { "python", "css" },
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					node_incremental = "<M-V>",
					node_decremental = "<M-v>",
				},
			},
		})
	end,
}
