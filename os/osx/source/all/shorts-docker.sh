#shorts for docker
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

# only allow docker-machine on osx
if [ $(uname) = "Darwin" ]; then
  alias dmr='docker-machine restart default'
  alias dms='docker-machine start defualt'
  alias dmk='docker-machine stop default'
  alias dmenv='eval `docker-machine env default`'
  alias dmssh='docker-machine ssh default'
fi

