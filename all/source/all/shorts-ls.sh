# shortand for ls
if [ $(uname) = "Darwin" ]; then
  lscolor="-G"
else
  lscolor="--color=auto"
fi

# list dir
alias ls="ls $lscolor"
alias ll="ls -l $lscolor"
alias lal="ls -la $lscolor"
alias la="ls -a $lscolor"
alias l="ls -1 $lscolor"
