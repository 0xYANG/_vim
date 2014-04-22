#PS1='\[\e[32;1m\]${debian_chroot:+($debian_chroot)}\u@\h\[\e[36;1m\]:\w\$ \[\e[0m\]'
export PS1="\[\e[36;1m\]\u\[\e[0m\]@\[\e[33;1m\]\h\[\e[0m\]:\[\e[31;1m\]\w\[\e[0m\]\n\$ "
export VIMFILES="~/vimfiles"


alias grep='grep --colour=auto'

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias la='ls $LS_OPTIONS -a'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

alias g=gvim
alias v='gvim -v'
alias vi='gvim -v'
alias d='gvim -d'

function gvim () { (/usr/bin/gvim -f "$@" &) }
