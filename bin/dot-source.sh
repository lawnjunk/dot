# sourcing files in $DOT/ALL and $DOT/$DOT_OS

source ~/.dot.conf

DOT_ALL_SOURCE_PATH="$DOT/ALL/source"
DOT_ALL_SOURCE_FILES=$(ls $DOT_ALL_SOURCE_PATH)

if [ DOT_ALL_SOURCE_FILES ]; then 
  echo "DOT sourcing files in $DOT_ALL_SOURCE_PATH"
  for file in $(ls $DOT_ALL_SOURCE_PATH);do
    echo "   loading: $file"
    source $DOT_ALL_SOURCE_PATH/$file
  done
fi

DOT_OS_SOURCE_PATH=$DOT/$DOT_OS/source
DOT_OS_SOURCE_FILES=$(ls $DOT_OS_SOURCE_PATH)

if [  $DOT_OS_SOURCE_FILES ]; then 
  echo -e "\nDOT sourcing files in $DOT_OS_SOURCE_PATH"
  for os_file in $(ls $DOT_OS_SOURCE_PATH);do
    echo "   loading: $os_file"
    source $DOT_OS_SOURCE_PATH/$os_file
  done
fi
