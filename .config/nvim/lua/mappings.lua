--local map = vim.api.nvim_set_keymap
local map = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- WINDOWS --
-- Splitting
map.set("n", "<leader>wv", "<cmd> vsplit <cr>", opts) -- vertically
map.set("n", "<leader>ws", "<cmd> split <cr>", opts) -- horizontally
-- Jumping
map.set("n", "<leader>ww", "<C-w>p", opts) -- recent

map.set("n", "<C-k>", "<C-w>k", opts) -- up
map.set("n", "<C-j>", "<C-w>j", opts) -- down
map.set("n", "<C-h>", "<C-w>h", opts) -- left
map.set("n", "<C-l>", "<C-w>l", opts) -- right
map.set("n", "<leader>wk", "<C-w>k", opts) -- up
map.set("n", "<leader>wj", "<C-w>j", opts) -- down
map.set("n", "<leader>wh", "<C-w>h", opts) -- left
map.set("n", "<leader>wl", "<C-w>l", opts) -- right

-- Moving windows
map.set("n", "<leader>wK", "<C-w>K", opts) -- up
map.set("n", "<leader>wJ", "<C-w>J", opts) -- down
map.set("n", "<leader>wH", "<C-w>H", opts) -- left
map.set("n", "<leader>wL", "<C-w>L", opts) -- right

map.set("n", "<leader>wc", "<cmd> close <cr>", opts) -- quit file but not delete buffer

-- Focus on current buffer
map.set("n", "<leader>wf", "<cmd> lua Snacks.zen.zoom() <cr>", opts)

-- Resizing
map.set("n", "<leader>w<", "<cmd> vertical resize -4 <cr>", opts) -- width -4
map.set("n", "<leader>w>", "<cmd> vertical resize +4 <cr>", opts) -- width +4
map.set("n", "<leader>w-", "<cmd> resize -2 <cr>", opts) -- height -2
map.set("n", "<leader>w+", "<cmd> resize +2 <cr>", opts) -- height +2

-- GIT
map.set("n", "<leader>gk", "<cmd> Gitsigns prev_hunk <cr>", opts) -- previous hunk
map.set("n", "<leader>gj", "<cmd> Gitsigns next_hunk <cr>", opts) -- next hunk
map.set("n", "<leader>gah", "<cmd> Gitsigns stage_hunk <cr>", opts) -- stage selected hunk
map.set("n", "<leader>gab", "<cmd> Gitsigns stage_buffer <cr>", opts) -- stage selected buffer
map.set("n", "<leader>gb", "<cmd> lua Snacks.picker.git_branches() <cr>", opts) -- git branches

-- TELESCOPE
map.set("n", "<leader>.", "<cmd> Telescope find_files <cr>", opts) -- find all files from cwd
map.set("n", "<leader>,", "<cmd> Telescope buffers <cr>", opts) -- list current buffers
map.set(
	"n",
	"<leader>>",
	"<cmd> lua require('telescope.builtin').find_files( { cwd = vim.fn.expand('%:p:h') }) <cr>",
	opts
) -- telescope find file in curr file dir
map.set("n", "<leader>fg", "<cmd> Telescope live_grep <cr>", opts) -- grep string
map.set("n", "<leader>ff", "<cmd> Telescope live_grep previewer=false <cr>", opts) -- grep no previewer
map.set(
	"n",
	"<leader>fG",
	"<cmd> lua require('telescope.builtin').live_grep( { cwd = vim.fn.expand('%:p:h') }) <cr>",
	opts
) -- grep string in cwd
map.set("n", "<leader>ffg", "<cmd> Telescope current_buffer_fuzzy_find case_mode=ignore_case <cr>", opts) -- grep string in current buffer
map.set("n", "<leader>fr", "<cmd> Telescope oldfiles <cr>", opts) -- find recent file
map.set("n", "<leader>/", "<cmd> Telescope git_files <cr>", opts) -- find git files
map.set("n", "<leader>g.", "<cmd> Telescope git_status <cr>", opts) -- git statuses

-- NEO TREE

map.set("n", "<leader>e", "<cmd> Neotree toggle reveal <cr>", opts) -- toggle neotree
map.set("n", "<leader>E", "<cmd> Neotree position=current <cr>", opts) -- toggle neotree
-- map.set("n", "<leader>e", "<cmd> lua Snacks.picker.explorer({follow_file = true}) <cr>", opts) -- tree snacks
-- map.set("n", "<leader>E", "<cmd> lua Snacks.picker.explorer({follow_file = false}) <cr>", opts) -- tree snacks current file

---- BUFFERS
map.set("n", "<leader>bk", function()
	local num = #vim.split(vim.fn.execute("ls"), "\n") - 1
	-- Delete buffers and replace with next if num > 1
	if num > 1 then
		vim.cmd("bp|bd#")
	else
		vim.cmd("bdelete")
	end
end, opts)

map.set("n", "<leader>bn", "<cmd> bnext <cr>", opts) -- next buffer
map.set("n", "<leader>bp", "<cmd> bprevious <cr>", opts) -- previous buffer
map.set("n", "<leader>bb", "<cmd> b# <cr>", opts) -- recently used buffer
map.set("n", "<leader>bs", "<cmd> new | wincmd p | close <cr>", opts) -- scratch buffer

---- WORKSPACES, TABS
map.set("n", "<leader><Tab>d", "<cmd> tabclose <cr>", opts) -- delete tab
map.set("n", "<leader><Tab>h", "<cmd> tabprevious <cr>", opts) -- previous tab
map.set("n", "<leader><Tab>l", "<cmd> tabnext <cr>", opts) -- next tab
map.set("n", "<leader><Tab>n", "<cmd> tabnew <cr>", opts) -- new tab

map.set("n", "<leader><Tab>1", "<cmd> tabn 1 <cr>", opts) -- tab 1
map.set("n", "<leader><Tab>2", "<cmd> tabn 2 <cr>", opts) -- tab 2
map.set("n", "<leader><Tab>3", "<cmd> tabn 3 <cr>", opts) -- tab 3
map.set("n", "<leader><Tab>4", "<cmd> tabn 4 <cr>", opts) -- tab 4
map.set("n", "<leader><Tab>5", "<cmd> tabn 5 <cr>", opts) -- tab 5
map.set("n", "<leader><Tab>6", "<cmd> tabn 6 <cr>", opts) -- tab 6

map.set("n", "<M-i>", ":tabprevious<CR>", opts)
map.set("n", "<M-o>", ":tabnext<CR>", opts)

map.set("n", "<leader><Tab><Tab>", "<cmd> tabs <cr>", opts) -- show all tabs
map.set("n", "<leader><Tab>r", function()
	local name = vim.fn.input("Tab name: ", "")
	vim.cmd("TabRename " .. name)
end)

----- FILES
-- Opens a new file with given name on the current file's directory
map.set("n", "<leader>fn", function()
	local current_dir = vim.fn.expand("%:p:h") .. "/"
	local name = vim.fn.input("New file name: ", "", "file")

	vim.cmd("new " .. current_dir .. name)
	vim.cmd("wincmd p | close")
end)
map.set("n", "<leader>fs", "<cmd> w <cr>", opts) -- save file
map.set("n", "<leader>qq", "<cmd> q <cr>", opts) -- quit nvim when in last buffer
map.set("n", "<esc>", "<cmd> noh <cr>", opts) -- clears search
map.set("n", "<C-g>", function()
	local file_name = vim.fn.expand("%")
	vim.fn.setreg("+", file_name)
	print(file_name)
end, opts) -- copy relative file path to clipboard

---- CONCEALING
map.set("n", "<leader>tl", function()
	Conceal = not Conceal
	print("Conceal:", Conceal)
	if Conceal then
		vim.cmd("set conceallevel=3")
	else
		vim.cmd("set conceallevel=0")
	end
end, opts)

map.set("n", "<leader>tL", function()
	MouseConceal = not MouseConceal
	print("Mouse Conceal:", MouseConceal)
	if MouseConceal then
		vim.cmd("set concealcursor=v")
	else
		vim.cmd("set concealcursor=n")
	end
end, opts)
