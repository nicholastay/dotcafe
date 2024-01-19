" Nick's light vimrc
" No plug stuff, just the basics

let mapleader=" "

set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber

set nohlsearch
set splitbelow splitright
set scrolloff=6

colorscheme torte
hi Normal guibg=NONE ctermbg=NONE

set tabstop=8
set softtabstop=0 noexpandtab
set shiftwidth=8

set mouse=a

" Copy + paste
vnoremap <leader>y "+y
vnoremap <leader>x "*y
map <leader>p "+P

" Paste mode
set pastetoggle=<F12>

" Replace all
nnoremap S :%s//g<Left><Left>

" Nice little helper for saving sudo when forget
cmap w!! w !sudo tee >/dev/null %

" Don't have to press shift to colon up
nnoremap ; :

" Git line lengths
au FileType gitcommit set tw=72
au FileType gitcommit set colorcolumn=73
