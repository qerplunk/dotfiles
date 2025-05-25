vim.opt.number = true
vim.opt.nuw = 3
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.cmdheight = 1

vim.opt.fixendofline = false

vim.opt.clipboard = "unnamedplus" -- "unnamedplus" might be slow on WSL

vim.opt.list = true
local space = " "
vim.opt.listchars:append({
	tab = "│ ",
	multispace = space,
	lead = space,
	trail = space,
	nbsp = space,
})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.opt.foldlevelstart = 20

vim.opt.ai = true
vim.opt.si = true

vim.opt.pumheight = 6

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.scrolloff = 0
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true

vim.opt.hidden = true
vim.opt.background = "dark"
vim.opt.confirm = true
vim.opt.timeoutlen = 300

vim.opt.conceallevel = 0
vim.opt.concealcursor = "n"

vim.opt.lazyredraw = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.updatetime = 300
vim.opt.signcolumn = "yes"

vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.diagnostic.config({
	jump = { float = true },
	float = {
		focusable = true,
		border = "single",
	},
	signs = {
		text = {
			-- [vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.ERROR] = "x",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
})

local white = "#eeeeee"
local orange = "#e0906c"
local deep_blue = "#16171b"
local dark_blue = "#1f252a"
local salmon = "#e67e80"
-- local black = "#000000"
-- local sand = "#cdc4ab"
-- local green = "#858b71"

vim.cmd(string.format("highlight TelescopePreviewTitle guifg=%s", white))
vim.cmd(string.format("highlight TelescopePreviewBorder guifg=%s", white))
vim.cmd(string.format("highlight TelescopeMatching guifg=%s", orange))
vim.cmd(string.format("highlight TelescopePreviewTitle guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopePreviewBorder guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopePreviewNormal guibg=%s", deep_blue))

vim.cmd(string.format("highlight TelescopePromptTitle guifg=%s", white))
vim.cmd(string.format("highlight TelescopePromptBorder guifg=%s", white))
vim.cmd(string.format("highlight TelescopePromptCounter guifg=%s", white))
vim.cmd(string.format("highlight TelescopePromptPrefix guifg=%s", white))
vim.cmd(string.format("highlight TelescopePromptTitle guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopePromptBorder guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopePromptNormal guibg=%s", deep_blue))

vim.cmd(string.format("highlight TelescopeSelectionCaret guifg=%s", salmon))
vim.cmd(string.format("highlight TelescopeSelectionCaret guibg=%s", dark_blue))
vim.cmd(string.format("highlight TelescopeSelection guibg=%s", dark_blue))

vim.cmd(string.format("highlight TelescopeResultsTitle guifg=%s", white))
vim.cmd(string.format("highlight TelescopeResultsBorder guifg=%s", white))
vim.cmd(string.format("highlight TelescopeResultsNormal guifg=%s", white))
vim.cmd(string.format("highlight TelescopeResultsTitle guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopeResultsBorder guibg=%s", deep_blue))
vim.cmd(string.format("highlight TelescopeResultsNormal guibg=%s", deep_blue))

vim.cmd(string.format("highlight WhichKeyNormal guibg=%s guifg=%s", deep_blue, white))
vim.cmd(string.format("highlight WhichKeySeparator guifg=%s", white))
vim.cmd(string.format("highlight WhichKeyGroup guifg=%s", salmon))
vim.cmd(string.format("highlight WhichKeyDesc guifg=%s", white))
vim.cmd(string.format("highlight WhichKeyBorder guibg=%s guifg=%s", deep_blue, white))
vim.cmd(string.format("highlight WhichKeyTitle guibg=%s guifg=%s", deep_blue, salmon))
