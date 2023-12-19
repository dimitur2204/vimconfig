local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>pv", function()
    api.tree.toggle({find_file = true})
end)

vim.api.nvim_set_keymap('n', '<s-w>', '<c-w>', {noremap=true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("v", "p", "\"+dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-f>", "<nop>")

vim.keymap.set("n", "<leader>f", function()
    vim.cmd("Neoformat")
end)

vim.keymap.set("n", "<S-Up>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<S-Down>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<S-Right>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<S-Left>", "<cmd>vertical resize +2<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<S-h>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>bprevious<CR>")
