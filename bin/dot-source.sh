# sourcing files in $DOT/ALL/all $DOT/ALL/$DOT_SHELL and $DOT/$DOT_OS/all $DOT/$DOT_OS/$DOT_SHELL
source ~/.dot.conf

function sourceFilesInDir(){
  DIR_PATH="$1"
  if [ -d "$DIR_PATH" ];then 
    SOURCE_FILES=$(ls $DIR_PATH)

    if [ "$SOURCE_FILES" ]; then 
      echo "DOT sourcing files in $DIR_PATH"
      for file in $(ls $DIR_PATH);do
        echo "   loading: $file"
        source $DIR_PATH/$file
      done
    fi
  fi
}

DOT_ALL_SOURCE_PATH="$DOT/ALL/source/all"
DOT_ALL_SHELL_SOURCE_PATH="$DOT/ALL/source/$DOT_SHELL"
DOT_OS_SOURCE_PATH="$DOT/$DOT_OS/source/all"
DOT_OS_SHELL_SOURCE_PATH="$DOT/$DOT_OS/source/$DOT_SHELL"

sourceFilesInDir $DOT_ALL_SOURCE_PATH
sourceFilesInDir $DOT_ALL_SHELL_SOURCE_PATH
sourceFilesInDir $DOT_OS_SOURCE_PATH
sourceFilesInDir $DOT_OS_SHELL_SOURCE_PATH
