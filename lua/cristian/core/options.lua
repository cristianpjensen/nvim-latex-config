-- Netrw file explorer
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0

-- Clipboard with y and p
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.mouse = "a"

-- Indentation
vim.opt.smartindent = true
vim.opt.smartcase = true
vim.opt.tabstop = 6
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true

-- Lines
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

-- Minimal number of lines above and below cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 16

-- Persistent undo
vim.opt.undofile = true

-- Colors
vim.opt.termguicolors = true
