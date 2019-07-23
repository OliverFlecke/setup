#!/usr/bin/env sh

brew install neovim

#VimPlug for extensions
directory=~/.local/share/nvim/site/autoload/plug.vim
if [ -d "$directory" ]; then
    echo "Downloading plug.vim"
    curl -fLo $directory --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi 
pip3 install neovim

if [ -d ~/.config ]; then
    mkdir ~/.config
fi

ln -s ~/.vim ~/.config/nvim
ln -f .vimrc ~/
ln -f .vimrc ~/.vim/init.vim
