-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- sensible numbers; tweak to taste
vim.o.timeout = true -- enable key-sequence timeout
vim.o.timeoutlen = 300 -- 0.3 s before Which-Key
vim.o.ttimeoutlen = 10 -- fast terminal ESC handling
