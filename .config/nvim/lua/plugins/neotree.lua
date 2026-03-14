return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		window = {
			mappings = {
				["/"] = "noop",
				["F"] = "fuzzy_finder",
			},
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
			},
			window = {
				fuzzy_finder_mappings = {
					["<C-j>"] = "move_cursor_down",
					["<C-k>"] = "move_cursor_up",
				},
				mappings = {
					["l"] = {
						"open",
						nowait = true,
					},
				},
			},
		},
	},
}
