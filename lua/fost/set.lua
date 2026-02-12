vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus" -- nvim clipboard will be the same as system

-- makes search case insensitive, but if you use a capital letter it will be case sensitive
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.guicursor = "" -- keeps my cursor fat

vim.opt.nu = true -- line numbers
-- vim.opt.relativenumber = true -- relative line numbers

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- 8 lines above and below the cursor
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

