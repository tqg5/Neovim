vim.cmd("set runtimepath^=~/.vim runtimepath+=~/.vim/after")
vim.o.packpath = vim.o.runtimepath
vim.cmd("source ~/.vimrc")

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
