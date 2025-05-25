require("settings")
require("mappings")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opts = {
	ui = {
		border = "single",
	},
}

require("lazy").setup("plugins", opts)

vim.cmd("colorscheme kanagawa-dragon")

vim.cmd("highlight Normal guibg=#101010") -- Background color
vim.cmd("highlight Normal guifg=#ffffff") -- Text color
vim.cmd("highlight @punctuation.bracket guifg=#93aac9") -- {, {%, }
vim.cmd("highlight @tag.attribute guifg=#e67e80") -- id, class
vim.cmd("highlight Underlined guifg=LightBlue") -- <a> tag names
vim.cmd("highlight Special guifg=#98A3C8") -- html tag
vim.cmd("highlight @variable.python guifg=#dddddd") -- python variable
vim.cmd("highlight @variable.go guifg=#dddddd") -- go variable

vim.cmd("highlight CursorLine guibg=#25282f")
vim.cmd("highlight CursorLineNr guifg=#eeeeee")
vim.cmd("highlight Whitespace guifg=#3f3f3f")

vim.cmd("highlight GitSignsStagedAdd guifg=green")

vim.cmd("highlight NormalFloat guibg=#202020")
vim.cmd("highlight FloatBorder guifg=white guibg=#202020")
vim.cmd("highlight DiagnosticUnderlineError guifg=#f05050")
