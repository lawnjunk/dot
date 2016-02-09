# discover os
alias ..='cd ..'
if [ $(uname) = "Darwin" ]; then
  lscolor="-G"
else
  lscolor="--color=auto"
  source $MESH/alias-linux.sh
fi

# list dir
alias ls="ls $lscolor"
alias ll="ls -l $lscolor"
alias lal="ls -la $lscolor"
alias la="ls -a $lscolor"
alias l="ls -1 $lscolor"
alias tree='tree -C'

# shorthand
alias n='node'
alias nn='node --harmony'
alias jj='jshint ^node_modules**/*.js *.js'
alias m='make'
alias e='echo -e '
alias gg='gulp'
alias sa='superagent'
alias md='mkdir -p'
alias rimraf='rm -rf'
alias grep='grep --color=always'
alias grepn='grep --color=always -n'
alias pingtest='ping -c 2 google.com'
alias slugbyte='ssh nacnud@slugbyte.com'

#npm shorthand
alias npmi='npm i'
alias npmis='npm i --save'
alias npmig='npm i -g'
alias npmid='npm i --save-dev'

# jump to dir
alias gitz="cd $HOME/gitz"
alias bldz="cd $HOME/bldz"

# git shorthand
alias ga='git add -A'
alias gb='git branch -a'
alias gu="git remote update -p"
alias gc='git commit -a -m'
alias gs='git status'
alias gp='git push origin'
alias gpu='git push upstream'
alias gl='git pull origin'
alias glu='git pull upstream'
alias gch='git checkout'
alias glog='git log --graph --max-count=10'
alias gdiff='git diff'
alias gdtool='git difftool'
alias gmerge='git merge'
alias gmtool='git mergetool'
alias gstash='git stash'
alias greset='git reset'
alias gmv='git mv'
alias gclone='git clone'
alias gremote='git remote'

# docker-machine shorthand
alias dmr='docker-machine restart default'
alias dms='docker-machine start defualt'
alias dmk='docker-machine stop default'
alias dmenv='eval `docker-machine env default`'
alias dmssh='docker-machine ssh default'

#docker shorthand
alias dr='docker'
alias drr='docker run'
alias drp='docker ps'
alias drpa='docker ps -a'
alias drc='docker commit'
alias drst='docker start'
alias drsp='docker stop'
alias dri='docker images'
alias drl='docker pull'
alias dru='docker push'
function drkilla {
  NUM_CONTAINER=$(docker ps -a |wc -l | sed "s/ *//g")
  NUM_CONTAINER=$(expr $NUM_CONTAINER - 1)
  for x in $(docker ps -a |tail -n $NUM_CONTAINER| cut -d ' ' -f 1); do 
    docker stop $x
    docker rm $x
  done 
}

# man in full color
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}


