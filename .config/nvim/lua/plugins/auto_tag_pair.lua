return {
	{
		"nmac427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup({
				filetype_exclude = {
					"text",
					"netrw",
					"tutor",
				},
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		lazy = false,
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			local highlight = {
				"Gray",
			}

			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "Gray", { fg = "#252525" })
			end)
			hooks.register(hooks.type.VIRTUAL_TEXT, function(_, _, _, virt_text)
				if virt_text[1] and virt_text[1][1] ~= " " then
					virt_text[1] = { " ", { "@ibl.whitespace.char.1" } }
				end

				return virt_text
			end)
			require("ibl").setup({
				indent = { highlight = highlight },
				whitespace = {
					highlight = highlight,
					remove_blankline_trail = false,
				},
				scope = { enabled = false },
				exclude = {
					filetypes = { "text" },
				},
			})
		end,
	},
}
