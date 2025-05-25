return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local lualine = require("lualine")
		local theme = require("lualine.themes.iceberg_dark")
		theme.normal.c.bg = "#262626"
		theme.normal.c.bg = "#262626"
		theme.inactive.c.bg = "#1a1a1a"

		lualine.setup({
			options = {
				theme = theme,
			},
			inactive_sections = {
				lualine_c = { { "filename", path = 2 } },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { { "filename", path = 2 } },
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
