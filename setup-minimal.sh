#!/usr/bin/env bash

echo "Copying config files"
./copyfiles

echo "Installing tools"
sudo apt-get install curl wget tree dos2unix -y

sudo apt-get install cmake make python3 python3-dev -y
sudo apt-get install git hub bash-completion -y

# Install vim and extension manager
sudo apt-get install vim-gtk -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim]

sudo apt-get update
sudo apt-get upgrade -y

sudo apt autoremove -y
