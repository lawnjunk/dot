function contains(){
  string=$1
  substring=$2
  if [ "${string#*$substring}" != "$string" ];then
    return 0
  else
    return 1
  fi
}

DOT_BIN_PATHS="$DOT/bin:$DOT/all/bin:$DOT/os/$DOT_OS/bin"
DOT_BIN_PATHS="$DOT_BIN_PATHS:$HOME/.node/$V_NODE_VERSION/bin"
DOT_BIN_PATHS="$DOT_BIN_PATHS:$HOME/.go/$V_GO_VERSION/bin:$HOME/gitz/go/$V_GO_VERSION/bin"
DOT_BIN_PATHS="$DOT_BIN_PATHS:$HOME/.bash/$V_BASH_VERSION/bin"
DOT_BIN_PATHS="$DOT_BIN_PATHS:/usr/local/bin"

contains $PATH $DOT_BIN_PATHS 

if [ $? -ne 0 ];then
  export PATH=$DOT_BIN_PATHS:$PATH
fi

home_bin_fist(){
  local home_bin_list=$(echo $PATH |tr ':' '\n' |  grep $HOME) 
  local sys_bin_list=$(echo $PATH |tr ':' '\n' | grep -v $HOME) 
  echo "${home_bin_list}:${sys_bin_list}"| tr '\n' ':'
}

export PATH=$(home_bin_fist)

unset DOT_BIN_PATHS
unset contains
unset -f home_bin_fist
