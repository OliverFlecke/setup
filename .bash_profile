[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

isMacOS() {
  if [ -e brew ]; then
      return 0
  else
      return 1
  fi
}

if isMacOS && [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

if isMacOS && [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


export PATH="/usr/local/texlive/2019/bin/x86_64-darwin:$PATH"

if [ -r ~/.bashrc ]; then
    source ~/.bashrc
fi

export LC_ALL=en_US.UTF-8

export PATH="$HOME/.cargo/bin:$PATH"
