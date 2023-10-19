"Plugs

call plug#begin('~/.vim/plugged')

Plug	'itchyny/lightline.vim'
Plug	'patstockwell/vim-monokai-tasty'
Plug	'42Paris/42header'

call plug#end()

"Settings

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
filetype plugin on
filetype indent on
syntax on
colorscheme vim-monokai-tasty

" 42 Header conf

let g:user42 = 'ivalimak'

" Lightline

let g:lightline= { 'colorscheme': 'monokai_tasty' }
set laststatus=2
