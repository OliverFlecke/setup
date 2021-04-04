export PATH=$HOME/bin:/usr/local/bin:$HOME/projects/setup/scripts:$PATH
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

alias tre='tree -I "bin|obj|wwwroot|node_modules"'
alias ll='exa -l'
alias curltime="curl -w \"@$HOME/tools/.curl-format.txt\" -o NUL -s "
alias c='clipcopy'
alias guid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias copyip="curl -L ipecho.net/plain | clipcopy"
alias today='date -u +"%Y-%m-%d"'
alias pj='python3 -m json.tool'
alias rmbo='rm -rf bin/; rm -rf obj/'

_dotnet_zsh_complete()
{
    local completions=("$(dotnet complete "$words")")    
    reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

