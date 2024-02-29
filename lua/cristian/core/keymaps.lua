vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Clear highlights
vim.keymap.set("n", "<leader>hc", "<cmd>nohlsearch<CR>")

-- Keep cursor in the middle when navigating
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move selections with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<up>", "gk")
vim.keymap.set("n", "<down>", "gj")

vim.keymap.set(
    "i",
    "<C-f>",
    "<Esc><cmd>exec 'r!inkscape-figures-manager new -f -d figures -l \"'.getline('.').'\"'<CR>kkkkkkddjjjf{a"
)
