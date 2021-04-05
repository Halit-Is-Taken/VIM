" |---------------------|
" | Halit's .vimrc File |
" |---------------------|

" vim-plug
" A minimalist Vim plugin manager. 

call plug#begin('~/.vim/plugged')

" This plugin adds Discord RPC to Vim so you can show the world on what cool projects you're working on!  
Plug 'vbe0201/vimdiscord'

call plug#end()

" Basic Configurations
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
filetype indent off
syntax on

set tabstop:2
set backspace=indent,eol,start
set shiftwidth=2
set expandtab
set number

inoremap ii <Esc> 

" a function for adding the current working file to gist. 
function Gist() 
  call inputsave()
  let name = input('Enter Filename: ')
  call inputrestore()

  let current_file = expand('%:p') 
  let l:Command = "gist -o " . current_file . " -f " . name
  execute "!" . l:Command
endfunction
