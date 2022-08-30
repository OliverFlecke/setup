# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH=$HOME/bin:/usr/local/bin:$HOME/projects/setup/scripts:$PATH
export PATH=/opt/homebrew/Cellar/openjdk/17.0.1_1/bin:$PATH
export PATH=/opt/homebrew/Cellar/python@3.10/3.10.1/bin/:$PATH
export PATH=$PATH:$(go env GOPATH)/bin
export LC_ALL=en_US.UTF-8

#source <(kubectl completion zsh)

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
alias vim='nvim'

_dotnet_zsh_complete()
{
    local completions=("$(dotnet complete "$words")")
    reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

