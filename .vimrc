" Custimazation for the vim editor
" Set line numbers
set number relativenumber

" Formatting
set autoindent
set tabstop=2
set shiftwidth=2

set encoding=utf-8

set showmode
set incsearch

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ 

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

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

" Plugins
call plug#begin('~/.vim/plugged')

call plug#end()

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/.ycm_extra_conf.py'

let g:NERDTreeDirArrowExpandable = '˅'
let g:NERDTreeDirArrowCollapsible = '˃'
map <C-t> :NERDTreeToggl<CR>


