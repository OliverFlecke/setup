" Custimazation for the vim editor
" Set line numbers
set number relativenumber

" Formatting
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8

set showmode
set incsearch

colo koehler
syntax on

" Set color scheme
set background=dark

" Disable arrow keys to more around
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype off
filetype indent on

autocmd FileType cpp nnoremap <buffer> <F9> :!g++ % && ./a.out <CR>
autocmd FileType python nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggl' }

Plug 'valloric/youcompleteme', { 'do': './install.py' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'terryma/vim-multiple-cursors'

" Language support
Plug 'plasticboy/vim-markdown'

call plug#end()

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/.ycm_extra_conf.py'

let g:NERDTreeDirArrowExpandable = '˅'
let g:NERDTreeDirArrowCollapsible = '˃'
map <C-t> :NERDTreeToggl<CR>

