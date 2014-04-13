#PS1='\[\e[32;1m\]${debian_chroot:+($debian_chroot)}\u@\h\[\e[36;1m\]:\w\$ \[\e[0m\]'
export PS1="\[\e[36;1m\]\u\[\e[0m\]@\[\e[33;1m\]\h\[\e[0m\]:\[\e[31;1m\]\w\[\e[0m\]\n\$ "
export PATH="/bin:/usr/tools/bin:/usr/site/bin:/usr/afs/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/usr/bin:/bin:/usr/X11R6/bin:/opt/ibm/c4eb/bin:/usr/kerberos/bin"
export PATH=$PATH:"/afs/btv/data/linux64/amd64_linux24/bin/:/afs/rch/rel/common/loadl/lbin/"
#export PAHT=$PAHT:""
export PATH=$PATH:"/afs/apd/func/vlsi/eclipz/common/tools/bin/:/afs/rchland/rel/common/proj/cte/tools/simarama/bin.64/"
export VIMFILES="~/vimfiles"
export CTEPATH="/afs/rchland/rel/common/proj/cte"


alias grep='grep --colour=auto'

export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias la='ls $LS_OPTIONS -a'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias krwin='/afs/apd.pok.ibm.com/func/vlsi/eclipz/common/tools/bin/sn7krdd1win -noXterm'

alias g=gvim
alias v='gvim -v'
alias vi='gvim -v'
alias d='gvim -d'

alias pw='sn7krdd1win -noXterm -cd /afs/apd.pok.ibm.com/u/shlyly/kr_rtx'
alias ra='runMantis -a *aet'
alias gs='g *SUM'
