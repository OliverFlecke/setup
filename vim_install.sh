#!/usr/bin/env sh

#VimPlug for extensions
directory=~/.local/share/nvim/site/autoload/plug.vim
if [ -d "$directory" ]; then
    echo "Downloading plug.vim"
    curl -fLo $directory --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi 


if [ -d ~/.config ]; then
    mkdir ~/.config
fi
if [ -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
fi

ln -f .vimrc ~/
ln -f .vimrc ~/.vim/init.vim
