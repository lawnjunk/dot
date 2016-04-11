function contains(){
  string=$1
  substring=$2
  if [ "${string#*$substring}" != "$string" ];then
    return 0
  else
    return 1
  fi
}

DOT_BIN_PATHS=$DOT/bin:$DOT/all/bin:$DOT/os/$DOT_OS/bin:$HOME/.node/bin:$HOME/.go/bin:$HOME/gitz/gospace/bin
contains $PATH $DOT_BIN_PATHS 

if [ $? -ne 0 ];then
  export PATH=$DOT_BIN_PATHS:$PATH
fi

unset DOT_BIN_PATHS
unset contains
