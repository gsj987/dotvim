"""""""""""""""""""""""""""""""""""""""
" setup Pathogen.vim
"""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""
" general settings
""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set ruler
set number
set cursorline

set guioptions=T
filetype on
filetype plugin on

"Set mapleader
let mapleader = ","
" On OSX
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif

"""""""""""""""""""""""""""""""""""""
" Setup vim-colors-solarized
""""""""""""""""""""""""""""""""""""
set background=light
colorscheme solarized
" keymap
call togglebg#map("<C-S-b>")

""""""""""""""""""""""""""""""""""
" Setup vim_django
"""""""""""""""""""""""""""""""""
map <Leader>dt :VimDjangoCommandTTemplate<CR> 
map <Leader>da :VimDjangoCommandTApp<CR> 

""""""""""""""""""""""""""""""""""
" shortcuts for vimrc
""""""""""""""""""""""""""""""""""
" Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
" Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 
