export PATH=$HOME/bin:/usr/local/bin:$HOME/projects/setup/scripts:$PATH
export PATH=/opt/homebrew/Cellar/openjdk/17.0.1_1/bin:$PATH
export PATH=/opt/homebrew/Cellar/python@3.10/3.10.1/bin/:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:/home/oliver/.dotnet
export LC_ALL=en_US.UTF-8
export APPDATA=/mnt/c/Users/olive/AppData/Roaming

#source <(kubectl completion zsh)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

DEFAULT_USER="$USER"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_SHORTEN_DIR_LENGTH=2

HIST_STAMPS="yyyy-mm-dd"

plugins=(
    git
    cp
    autojump
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias tre='tree -I "bin|obj|wwwroot|node_modules"'
alias ll='exa -l'
alias curltime="curl -w \"@$HOME/tools/.curl-format.txt\" -o NUL -s "
alias c='clipcopy'
alias guid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias copyip="curl -L ipecho.net/plain | clipcopy"
alias today='date -u +"%Y-%m-%d"'
alias pj='python3 -m json.tool'
alias rmbo='rm -rf bin/; rm -rf obj/'
alias vim='nvim'

_dotnet_zsh_complete()
{
    local completions=("$(dotnet complete "$words")")
    reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet
#source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm ba

