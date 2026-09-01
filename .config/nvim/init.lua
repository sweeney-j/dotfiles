require("config.lazy")

local set = vim.opt

set.number = true
set.relativenumber = true

set.shiftwidth = 4
set.tabstop = 4
set.expandtab = true
set.autoindent = true
set.smartindent = true
vim.cmd('filetype indent on')

set.termguicolors = true
set.colorcolumn = "80"
set.signcolumn = "yes"
