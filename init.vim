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

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
