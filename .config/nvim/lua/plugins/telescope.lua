return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		-- "nvim-telescope/telescope-file-browser.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		-- local actions_state = require("telescope.actions.state")
		-- local actions_set = require("telescope.actions.set")
		-- local fb_actions = require("telescope").extensions.file_browser.actions

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "cmake_build_DEBUG/*", "node_modules/", ".git/" },
				prompt_prefix = "   ",
				sorting_strategy = "ascending",
				layout_config = {
					width = 0.99,
					height = 0.99,
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
			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
			},

			-- extensions = {
			-- 	file_browser = {
			-- 		theme = "ivy",
			-- 		initial_mode = "normal",
			-- 		respect_gitignore = false,
			-- 		mappings = {
			-- 			["n"] = {
			-- 				["."] = fb_actions.toggle_hidden,
			-- 				["h"] = fb_actions.goto_parent_dir,
			-- 				["l"] = function(prompt_buffer) -- Open file or go into directory
			-- 					local is_dir = actions_state.get_selected_entry().Path:is_dir()
			-- 					if is_dir then
			-- 						fb_actions.open_dir(prompt_buffer)
			-- 					else
			-- 						actions_set.select(prompt_buffer, "default")
			-- 					end
			-- 				end,
			-- 			},
			-- 		},
			-- 	},
			-- },
		})

		telescope.load_extension("fzf")
		-- telescope.load_extension("file_browser")
		telescope.load_extension("harpoon")
	end,
}
