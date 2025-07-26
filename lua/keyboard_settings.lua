vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.clipboard = "unnamedplus"

vim.opt.scrolloff = 8

vim.opt.virtualedit = "block"

vim.opt.inccommand = "split"

vim.opt.cpoptions:append("I")

--vim.opt.ignorecase = true

vim.opt.termguicolors = true

vim.diagnostic.config({
    virtual_text = true
})

--keymaps

vim.g.mapleader = " "

vim.keymap.set('n', '<LEADER>pv', ':Vex<CR>', { desc = 'Open vertical window' })

vim.keymap.set('n', '<LEADER><CR>', ":so ~/.config/nvim/init.lua", { desc = "Source init.lua" })

vim.keymap.set('n', "<C-p>", "GFiles<CR>", { desc = "Find files in nearest .git folder via Telescope" })
vim.keymap.set('n', "<LEADER>pf", ":Files<CR>", { desc = "Open files in filesystem via Telescope" })

vim.keymap.set('n', "<C-j>", ":cnext<CR>", { desc = "Cycles forward in the quickfix list" })
vim.keymap.set('n', "<C-k>", ":cprev<CR>", { desc = "Cycles backward in the quickfix list" })

vim.keymap.set('v', "<LEADER>p", "_dP", { desc = "" })
vim.keymap.set('v', "<LEADER>y", "+y", { desc = "" })

vim.keymap.set('n', "<LEADER><", ":bprev<CR>", { desc = "Move backwards 1 buffer" })
vim.keymap.set('n', "<LEADER>>", ":bext<CR>", { desc = "Move forwards 1 buffer" })

-- Find files using Telescope ccommand-lind sugar.
vim.keymap.set('n', "<LEADER>ff", "<CMD>Telescope find_files<CR>")
vim.keymap.set('n', "<LEADER>fg", "<CMD>Telescope live_grep<CR>")
vim.keymap.set('n', "<LEADER>fh", "<CMD>Telescope help_tags<CR>")
vim.keymap.set('n', "<LEADER>fb", "<CMD>Telescope bufffers<CR>")

vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('v', "J", ":m '>+1<cr>gv=gv")
