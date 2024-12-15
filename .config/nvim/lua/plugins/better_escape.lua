return {
	"max397574/better-escape.nvim",
	config = function()
		require("better_escape").setup({
			mappings = {
				i = {
					j = {
						j = false,
						k = "<Esc>",
					},
				},
			},
			timeout = 250,
		})
	end,
}
