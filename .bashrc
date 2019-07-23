PS1='\[\033[01;32m\]$(__git_ps1 "[%s]") ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u: \D{%T} \[\033[1;36m\]\w\n\[\033[1;36m\]>> '

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"

unset color_prompt force_color_prompt

alias ll='ls -lFha'

function wcl {
    echo -ne '\e''[5i'
    cat $*
    echo -ne '\e''[4i'
    echo "Copied to Windows clipboard" 1>&2
}
