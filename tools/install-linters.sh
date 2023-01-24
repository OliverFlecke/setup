#!/usr/bin/env sh

# This script is made to install all of the common linters that is used by the neovim setup in this
# repository. Note that they are being installed from various different sources and package 
# package managers, which means this is **very** likely to fail if the machine is not already setup.

# NPM installs
npm install -g markdownlint-cli2 prettier
npm install -g git+https://github.com/streetsidesoftware/cspell-cli # Installs cspell

cargo install stylua

