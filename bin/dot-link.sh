#!/usr/bin/env bash
function backup(){
  mv "$1" "$1.pre-dot-install"
}

function linkFilesToHome(){
  DIR_PATH="$1"
  if [ -d "$DIR_PATH" ];then 
    SOURCE_FILES=$(ls $DIR_PATH)

    if [ -n "$SOURCE_FILES" ]; then 
      echo "DOT linking files from $DIR_PATH"
      for file in $(ls $DIR_PATH);do
        [ -e "$HOME/.$file" ] && echo "   backing up $HOME/.$file to $HOME/.$file.pre-dot-install" && backup "$HOME/.$file"
        echo "   linking: $file"
        ln -s "$DIR_PATH/$file" "$HOME/.$file"
      done
    fi
  fi
}

DOT_ALL_LINK_PATH="$DOT/all/link"
#DOT_ALL_SHELL_SOURCE_PATH="$DOT/ALL/source/$DOT_SHELL"
#DOT_OS_SOURCE_PATH="$DOT/$DOT_OS/source/all"
#DOT_OS_SHELL_SOURCE_PATH="$DOT/$DOT_OS/source/$DOT_SHELL"

linkFilesToHome $DOT_ALL_LINK_PATH
#sourceFilesInDir $DOT_ALL_SHELL_SOURCE_PATH
#sourceFilesInDir $DOT_OS_SOURCE_PATH
#sourceFilesInDir $DOT_OS_SHELL_SOURCE_PATH

# clear out variables
unset DIR_PATH
unset SOURCE_FILES
unset DOT_ALL_LINK_PATH

# clear out functions
unset -f backup
unset -f linkFilesToHome
unset -f file

