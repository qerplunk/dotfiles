return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "build/*", "cmake_build_DEBUG/*", "node_modules/", ".git/" },
				prompt_prefix = "   ",
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = {
						prompt_position = "top",
					},
				},
				borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				mappings = {
					n = {
						["q"] = actions.close,
					},
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-h>"] = function()
							vim.cmd("Telescope find_files find_command=fd,--type,f,--hidden,--no-ignore")
						end,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("harpoon")
	end,
}
