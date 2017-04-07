#!/bin/bash

function runInitScript(){
DIR_PATH="$1"
if [ -d "$DIR_PATH" ];then 
  SOURCE_FILES=$(ls $DIR_PATH)

  if [ -n "$SOURCE_FILES" ]; then 
    echo "DOT init scripts in $DIR_PATH"
    for file in $(ls $DIR_PATH);do
      echo "   running installer: $file"
      source "$DIR_PATH/$file"
    done
  fi
fi
}

DOT_ALL_INIT_PATH="$DOT/all/init"
DOT_OS_INIT_DEPEND_PATH="$DOT/os/$DOT_OS/init/system"
DOT_OS_INIT_GENERAL_PATH="$DOT/os/$DOT_OS/init/user"
#DOT_ALL_SHELL_SOURCE_PATH="$DOT/ALL/source/$DOT_SHELL"
#DOT_OS_SOURCE_PATH="$DOT/$DOT_OS/source/all"
#DOT_OS_SHELL_SOURCE_PATH="$DOT/$DOT_OS/source/$DOT_SHELL"

runInitScript $DOT_OS_INIT_DEPEND_PATH
runInitScript $DOT_ALL_INIT_PATH
runInitScript $DOT_OS_INIT_GENERAL_PATH

# unset varbles
unset DIR_PATH
unset DOT_ALL_INIT_PATH
unset DOT_OS_INIT_DEPEND_PATH
unset DOT_OS_INIT_GENERAL_PATH
unset SOURCE_FILES
unset file

# unset functions
unset -f  runInitScript
