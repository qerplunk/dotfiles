return {
	"https://github.com/lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "┃" },
				topdelete = { text = "^" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},

			current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
		})
	end,
}
