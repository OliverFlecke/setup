# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$HOME/projects/setup/scripts:$PATH
#export PATH=/opt/homebrew/Cellar/openjdk/17.0.1_1/bin:$PATH
#export PATH=/opt/homebrew/Cellar/python@3.10/3.10.1/bin/:$PATH
#export PATH=$PATH:$(go env GOPATH)/bin
#export PATH=$PATH:/home/oliver/.dotnet
export LC_ALL=en_US.UTF-8
export APPDATA=/mnt/c/Users/olive/AppData/Roaming

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

DEFAULT_USER="$USER"
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL10K_SHORTEN_DIR_LENGTH=2

HIST_STAMPS="yyyy-mm-dd"

plugins=(
	git
	gh
	gitignore
	git-lfs
	cp
	autojump
	dotenv
	dotnet
	docker
	docker-compose
	zsh-autosuggestions
	emoji
	rust
	ripgrep
	macos

	hitchhiker
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

export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm ba

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
