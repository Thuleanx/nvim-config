vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- allows moving blocks of selected text with J and K
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- when doing J, keep cursor at the beginning of the line
vim.keymap.set("n", "J", "mzJ`z")

-- when doing up and down half pages, keep cursor at middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when searching through occurences, keep cursor at middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allow for pasting without losing the current paste buffer
vim.keymap.set("x", "<leader>pp", "\"_dP")

-- copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- start a search and replace on the current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>tt", ":vsp<CR>:terminal<CR>jjA")

