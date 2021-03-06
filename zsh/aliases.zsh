# On mac, if coreutils are installed...
if (( $+commands[gls] ))
then
  alias ls="gls --color=tty"
fi

# On mac, if coreutils are installed...
if (( $+commands[gsed] ))
then
  alias sed="gsed"
fi

# ls aliases
alias l="ls"
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"


# GNU Tar
if [ -f "/usr/local/opt/gnu-tar/libexec/gnubin/tar" ]
then
    export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
fi

# Generic aliases
alias grep="grep --color=auto"
alias reload='. ~/.zshrc'

# cd into Development folder
alias d="cd $COMPANY"
alias s="cd $PROJECTS"


alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed"
