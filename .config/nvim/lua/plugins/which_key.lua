return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.setup({
			preset = "classic",
			win = {
				border = "rounded"
			},
			filter = function(mapping)
				-- exclude mappings without a description
				return mapping.desc and mapping.desc ~= ""
			end,
		})

		wk.add({
			{ "<leader><Tab>", group = "Tab" },
			{ "<leader><Tab><Tab>", desc = "Show tabs" },
			{ "<leader><Tab>d", desc = "Delete tab" },
			{ "<leader><Tab>h", desc = "Previous tab" },
			{ "<leader><Tab>l", desc = "Next tab" },
			{ "<leader><Tab>n", desc = "New tab" },
			{ "<leader><Tab>r", desc = "Rename tab" },

			{ "<leader>a", group = "Harpoon" },
			{ "<leader>aa", desc = "Add file" },
			{ "<leader>ah", desc = "File 1" },
			{ "<leader>aj", desc = "File 2" },
			{ "<leader>ak", desc = "File 3" },
			{ "<leader>al", desc = "File 4" },
			{ "<leader>am", desc = "Menu" },
			{ "<leader>an", desc = "Next" },
			{ "<leader>ap", desc = "Previous" },

			{ "<leader>b", group = "Buffer" },
			{ "<leader>bb", desc = "Go to recent buffer" },
			{ "<leader>bf", desc = "Format buffer" },
			{ "<leader>bk", desc = "Delete current buffer" },
			{ "<leader>bn", desc = "Next buffer" },
			{ "<leader>bp", desc = "Previous buffer" },
			{ "<leader>bs", desc = "Scratch buffer" },

			{ "<leader>c", group = "Code" },
			{ "<leader>ca", desc = "Code actions" },

			{ "<leader>d", desc = "Line diagnostics" },
			{ "<leader>D", desc = "File diagnostics" },

			{ "<leader>e", group = "Nvim Tree" },
			{ "<leader>e", desc = "Nvim Tree" },

			{ "<leader>f", group = "File" },
			{ "<leader>ff", group = "Telescope File Browser" },
			{ "<leader>fg", desc = "Grep find" },
			{ "<leader>fn", desc = "New file" },
			{ "<leader>fr", desc = "Find recent file" },
			{ "<leader>fs", desc = "Save file" },

			{ "<leader>g", group = "Git" },
			{ "<leader>gk", desc = "Git hunk previous" },
			{ "<leader>gj", desc = "Git hunk next" },
			{ "<leader>gah", desc = "Git stage hunk" },
			{ "<leader>gab", desc = "Git stage buffer" },

			{ "<leader>q", group = "Quit" },
			{ "<leader>qq", desc = "Quit nvim" },

			{ "<leader>t", group = "Toggle" },
			{ "<leader>tL", desc = "conceal on cursor line" },
			{ "<leader>tc", desc = "cmp" },
			{ "<leader>td", desc = "Telescope diagnostics" },
			{ "<leader>tl", desc = "conceal text" },

			{ "<leader>w", group = "Window" },
			{ "<leader>w+", desc = "Increase height" },
			{ "<leader>w-", desc = "Decrease height" },
			{ "<leader>w<", desc = "Decrease width" },
			{ "<leader>w>", desc = "Increase width" },
			{ "<leader>wH", desc = "Move window left" },
			{ "<leader>wJ", desc = "Move window down" },
			{ "<leader>wK", desc = "Move window up" },
			{ "<leader>wL", desc = "Move window right" },
			{ "<leader>wc", desc = "Close window" },
			{ "<leader>wf", desc = "Focus on window" },
			{ "<leader>wh", desc = "Jump to window left" },
			{ "<leader>wj", desc = "Jump to window down" },
			{ "<leader>wk", desc = "Jump to window up" },
			{ "<leader>wl", desc = "Jump to window right" },
			{ "<leader>ws", desc = "Horizontal split" },
			{ "<leader>wv", desc = "Vertical split" },
			{ "<leader>ww", desc = "Jump to recent window" },

			{ "<leader>.", group = "Telescope" },
			{ "<leader>.", desc = "Telescope files" },

			{ "<leader>/", group = "Telescope" },
			{ "<leader>/", desc = "Telescope git files" },

			{ "<leader>>", group = "Telescope" },
			{ "<leader>>", desc = "Telescope cwd files" },

			{ "<leader>,", group = "Telescope" },
			{ "<leader>,", desc = "Telescope buffers" },
		})
	end,
}
