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
set hls


set guioptions=T
filetype on
filetype plugin on
set vb

"Set mapleader
let mapleader = ","
" On OSX
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif

"""""""""""""""""
" set airline
"""""""""""""""""
let g:airline_theme = "dark"

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

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

"""""""""""""""""""""""""""""""""""
" set nerdtree
""""""""""""""""""""""""""""""""""
nmap <silent> <leader>tp <ESC>:NERDTreeToggle<CR>

let NERDTreeIgnore = ['\.pyc$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeUseSimpleIndicator = 1


"""""""""""""""""""""""""""""""
" set easy-motion
"""""""""""""""""""""""""""""""
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

""""""""""""""""""""""""""""""""""
" shortcuts for vimrc
""""""""""""""""""""""""""""""""""
" Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
" Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 
