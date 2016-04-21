# sourcing files in $DOT/ALL/all $DOT/ALL/$DOT_SHELL and $DOT/$DOT_OS/all $DOT/$DOT_OS/$DOT_SHELL
source ~/.dot.conf

debug_log(){
  if [[ $DOT_DEBUG ]];then
    echo "$@"
  fi
}

source_file="$HOME/.source_file"

[[ -e "$source_file" ]] && rm "$source_file"
touch "$source_file"

function sourceFilesInDir(){
  DIR_PATH="$1"
  if [ -d "$DIR_PATH" ];then 
    SOURCE_FILES=$(ls $DIR_PATH)

    if [ "$SOURCE_FILES" ]; then 
      debug_log "DOT sourcing files in $DIR_PATH"
      pushd . > /dev/null
      cd $DIR_PATH
      for file in ./* ;do
        debug_log "   loading: $DIR_PATH/$file"
        cat "$DIR_PATH/$file" >> "$source_file"
      done
      popd > /dev/null
    fi
  fi
}

DOT_ALL_SOURCE_PATH="$DOT/all/source/all"  
DOT_ALL_SHELL_SOURCE_PATH="$DOT/all/source/$DOT_SHELL"  
DOT_OS_SOURCE_PATH="$DOT/os/$DOT_OS/source/all" 
DOT_OS_SHELL_SOURCE_PATH="$DOT/os/$DOT_OS/source/$DOT_SHELL"  

sourceFilesInDir $DOT_ALL_SOURCE_PATH
sourceFilesInDir $DOT_ALL_SHELL_SOURCE_PATH
sourceFilesInDir $DOT_OS_SOURCE_PATH
sourceFilesInDir $DOT_OS_SHELL_SOURCE_PATH


unset DIR_PATH
unset SOURCE_FILES
unset file
unset DOT_OS_SOURCE_PATH
unset DOT_OS_SHELL_SOURCE_PATH
unset DOT_ALL_SOURCE_PATH
unset DOT_ALL_SHELL_SOURCE_PATH

unset -f sourceFilesInDir
