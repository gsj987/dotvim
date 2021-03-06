"""""""""""
" set editconfig for win32
"""""""""""

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
set fileencodings=ucs-bom,utf-8,cp936,gb18030,default,latin1
set fileencoding=utf-8
set fileformats=unix,dos
set fileformat=unix
set encoding=utf-8
set backspace=2
set nobackup
set nowritebackup

if has("gui_running")
set guioptions=T
if has("win32")
set guifont=Consolas:h10:cANSI
set guifontwide=YaHei_Mono:h9:cGB2312
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
endif
endif
filetype on
filetype plugin on
set vb
set formatoptions+=mM

"Set mapleader
let mapleader = ","
" On OSX
"vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>
" On Linux
vnoremap <C-c> "ry:call system('xclip -selection c', @r)<cr>

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal g`\"" |
     \ endif

"""""""""""""""""
" set airline
"""""""""""""""""
let g:airline_theme = "base16"

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
let g:airline_left_sep = '►'
let g:airline_right_sep = '◄'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '♆'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

"""""""""""""""""""""""""""""""""""""
" Setup vim-colors-solarized
""""""""""""""""""""""""""""""""""""
let base16colorspace=256
colorscheme base16-monokai

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

"""""""""""""""""""""""""""""""""
" set ctrlp
"""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.7z,*.rar,*/build/*,*/bower_components/*,*/node_modules/*,*/platforms/*     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|jpg|png|gif|class)$',
  \ }

"""""""""""""""""""""""""""""""""
" set taglist
"""""""""""""""""""""""""""""""""
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Use_Right_Window = 1
if has("win32")
let Tlist_Ctags_Cmd = 'D:/Vim/bin/ctags/ctags.exe'
else
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
nmap <silent> <leader>tt <ESC>:TlistToggle<CR>

""""""""""""""""""""""""""""""""""
" set tabular
""""""""""""""""""""""""""""""""""
if exists(":Tabularize")
	nmap <Leader>a= :Tabularize /=<CR>
	vmap <Leader>a= :Tabularize /=<CR>
	nmap <Leader>a: :Tabularize /:\zs<CR>
	vmap <Leader>a: :Tabularize /:\zs<CR>
endif

"""""""""""""""""""""""""""
" set geeknote
"""""""""""""""""""""""""""
noremap <silent> <leader>te <ESC>:Geeknote<CR>
let g:GeeknoteFormat="markdown"

""""""""""""""""""""""""""""
" set for js
""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold() "enable code folding

"""""""""""""""""""""""""""""
" set for indent guides
""""""""""""""""""""""""""""""
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2

""""""""""""""""""""""""""""""""""
" shortcuts for vimrc
""""""""""""""""""""""""""""""""""
" Fast reloading of the .vimrc
map <silent> <leader>s :source ~/.vimrc<cr>
" Fast editing of .vimrc
map <silent> <leader>e :e ~/.vimrc<cr>
" When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 

"""""""""""""""""""""""""""""""""""
" shortcuts
"""""""""""""""""""""""""""""""""""
map <silent> <leader>[ :tabprevious<cr>
map <silent> <leader>] :tabnext<cr>
map <silent> <leader>c :tabclose<cr>
map <silent> <leader>ln :lnext<cr>
map <silent> <leader>lp :lprevious<cr>


"""""""""""""""""""""""""""""""""""
" for fcitx.vim
"""""""""""""""""""""""""""""""""""
set ttimeoutlen=100

"""""""""""""""""""""""""""""""""
" for mutt
"""""""""""""""""""""""""""""""""
au BufRead /tmp/mutt-* set tw=72

""""""""""""""
" set less
" """"""""""""
autocmd BufNewFile,BufRead *.less setf less


"""""""""""""""""""""""""""""""""""""
" for syntastic
"""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_javascript_checkers = ['eslint']
