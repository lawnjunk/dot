#shorts for sudo docker
alias dr='sudo docker'
alias drr='sudo docker run'
alias drp='sudo docker ps'
alias drpa='sudo docker ps -a'
alias drc='sudo docker commit'
alias drst='sudo docker start'
alias drsp='sudo docker stop'
alias dri='sudo docker images'
alias drl='sudo docker pull'
alias dru='sudo docker push'

function drkilla {
  NUM_CONTAINER=$(sudo docker ps -a |wc -l | sed "s/ *//g")
  NUM_CONTAINER=$(expr $NUM_CONTAINER - 1)
  for x in $(sudo docker ps -a |tail -n $NUM_CONTAINER| cut -d ' ' -f 1); do 
    sudo docker stop $x
    sudo docker rm $x
  done 
}

