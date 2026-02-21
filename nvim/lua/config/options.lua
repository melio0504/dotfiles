-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"

vim.opt.guicursor = {
  "n-v-c:block-blinkon500-blinkoff500-blinkwait200",
  "i-ci-ve:block-blinkon500-blinkoff500-blinkwait200",
  "r-cr:hor20-blinkon500-blinkoff500-blinkwait200",
  "t:block-blinkon500-blinkoff500-blinkwait200",
}

vim.opt.wrap = true

vim.opt.linebreak = true
