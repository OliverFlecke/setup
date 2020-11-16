#!/usr/bin/env bash

setxkbmap dvorak
setxkbmap -option caps:escape

sh ./setup-minimal.sh

sudo apt install -y gnupg2 vlc
sudo apt install firefox-esr -y
sudo snap install spotify

# posh-git 
wget https://raw.githubusercontent.com/lyze/posh-git-sh/master/git-prompt.sh -O ~/git-prompt.sh

# Install vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get install code -y

# Adapta Dark theme
sudo apt-add-repository ppa:tista/adapta -y
sudo apt-get update
sudo apt-get install adapta-gtk-theme -y

# Installing arc-theme
sudo apt install autoconf automake pkg-config libgtk-3-dev gnome-themes-standard gtk2-engines-murrine -y
./autogen.sh --prefix=/usr
sudo make install

# Fonts
sudo apt install fonts-firacode -y

# Clean up unused packages
sudo apt autoremove -y

