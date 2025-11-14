vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- General Settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = 'unnamedplus'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 8
vim.o.confirm = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

require("config.keymaps")
