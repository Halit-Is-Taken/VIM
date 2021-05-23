" |---------------------|
" | Halit's .vimrc File |
" |---------------------|

" vim-plug
" A minimalist Vim plugin manager. 

call plug#begin('~/.vim/plugged')

" This plugin adds Discord RPC to Vim so you can show the world on what cool projects you're working on!  
Plug 'vbe0201/vimdiscord'

" A light and configurable statusline/tabline plugin for Vim! 
Plug 'itchyny/lightline.vim'

" Solarized, without the bullshit.
Plug 'romainl/flattened'

call plug#end()

" itchyny/lightline.vim Configurations
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = { 'colorscheme': 'solarized', }

" romainl/flattened Configurations
color flattened_light

" Some other Configurations
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set smartindent
syntax on

set tabstop:2
set backspace=indent,eol,start
set shiftwidth=2
set expandtab
set number

inoremap ii <Esc>
