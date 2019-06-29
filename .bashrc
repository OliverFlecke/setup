if [ -e ~/git-prompt.sh ]; then
    source ~/git-prompt.sh
    PROMPT_COMMAND='__posh_git_ps1 "\[\033[01;32m\]\u: \D{%T} " " \[\033[1;36m\]\w\n\[\033[1;36m\]>> ";'$PROMPT_COMMAND
else 
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u: \D{%T} \[\033[1;36m\]\w\n\[\033[1;36m\]>> '
fi 

unset color_prompt force_color_prompt

alias ll='ls -lFh'
setxkbmap -option caps:escape
setxkbmap dvorak

source /usr/share/bash-completion/completions/git

function wcl {
    echo -ne '\e''[5i'
    cat $*
    echo -ne '\e''[4i'
    echo "Copied to Windows clipboard" 1>&2
}
