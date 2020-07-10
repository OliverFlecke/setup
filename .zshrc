export PATH=$HOME/bin:/usr/local/bin:$PATH
export LC_ALL=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

# Path to your oh-my-zsh installation.
export ZSH="/Users/oliver/.oh-my-zsh"

DEFAULT_USER="$USER"
ZSH_THEME="agnoster"

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git 
    cp
    autojump
)

source $ZSH/oh-my-zsh.sh

alias tre='tree -I "bin|obj|wwwroot"'

