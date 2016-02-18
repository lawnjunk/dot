PATH=$PATH:$DOT/bin:$DOT/all/bin:$DOT/os/$DOT_OS/bin
export PATH=$(echo $PATH | tr  ':' "\n" |  sort |  uniq  |tr '\n' ':')
