set scrolloff=8
set number
set relativenumber

set tabstop=2 softtabstop=2
set shiftwidth=2
set autoindent
set cpoptions+=I
set noexpandtab
set smartindent

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'mason-org/mason.nvim',
Plug 'mason-org/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

lua << EOF
require("mason").setup()

require("mason-lspconfig").setup {
    automatic_enable = true,
		ensure_installed = { "ts_ls" }
}
EOF

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
" or                                , { 'branch': '0.1.x' }

call plug#end()

" This was from the colorscheme section
set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Our remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>< :bprev<CR>
nnoremap <leader>> :bnext<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
