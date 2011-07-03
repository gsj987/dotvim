"""""""""""""""""""""""""""""""""""""""
" setup Pathogen.vim
"""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


""""""""""""""""""""""""""""""""""""""
" general settings
""""""""""""""""""""""""""""""""""""""
syntax on
set ruler
set number
set cursorline

"Set mapleader
let mapleader = ","


"""""""""""""""""""""""""""""""""""""
" Setup vim-colors-solarized
""""""""""""""""""""""""""""""""""""
set background=light
colorscheme solarized
" keymap
call togglebg#map("<C-S-b>")


""""""""""""""""""""""""""""""""""
" shortcuts for vimrc
""""""""""""""""""""""""""""""""""
" Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
" Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 
