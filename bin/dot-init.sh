#!/bin/bash

echo  "what operating system uu working on? "
echo -n "> "
read DOT_OS
echo $DOT_OS

echo  "what uu call this box? "
echo -n "> "
read DOT_BOX

export DOT="$HOME/.dot"
export DOT_BOX
export DO_OS

DOT_CONF="$HOME/.dot.conf"
echo "export DOT=\$HOME/.dot" > $DOT_CONF
echo "export DOT_OS=$DOT_OS" >> $DOT_CONF
echo "export DOT_BOX=$DOT_BOX" >> $DOT_CONF

source $DOT/bin/dot-link.sh

function runInitScript(){
  DIR_PATH="$1"
  if [ -d "$DIR_PATH" ];then 
    SOURCE_FILES=$(ls $DIR_PATH)

    if [ -n "$SOURCE_FILES" ]; then 
      echo "DOT init scripts in $DIR_PATH"
      for file in $(ls $DIR_PATH);do
        #[ -e "$HOME/.$file" ] && echo "   backing up $HOME/.$file to $HOME/.$file.pre-dot-install" && backup "$HOME/.$file"
        echo "   running installer: $file"
        source "$DIR_PATH/$file"
      done
    fi
  fi
}

DOT_ALL_LINK_PATH="$DOT/all/init"
#DOT_ALL_SHELL_SOURCE_PATH="$DOT/ALL/source/$DOT_SHELL"
#DOT_OS_SOURCE_PATH="$DOT/$DOT_OS/source/all"
#DOT_OS_SHELL_SOURCE_PATH="$DOT/$DOT_OS/source/$DOT_SHELL"

runInitScript $DOT_ALL_LINK_PATH
