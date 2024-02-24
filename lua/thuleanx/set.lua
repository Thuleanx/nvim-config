vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- undo tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
-- end undo tree

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"
vim.opt.splitbelow = true
vim.opt.splitright = true

-- fold stuff
vim.opt.foldenable = false
vim.opt.foldlevelstart = 5
vim.opt.foldnestmax = 10
-- end fold

vim.opt.encoding = "UTF-8"

-- wild menu
vim.opt.wildmenu = true
-- end wild menu
