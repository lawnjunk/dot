#!/bin/bash
DOT_CONF="$HOME/.dot.conf"

if [ ! -e "$DOT_CONF" ]; then 
  echo  "what operating system uu working on? "
  echo -n "> "
  read DOT_OS

  echo  "what uu call this box? "
  echo -n "> "
  read DOT_BOX
fi

export DOT="$HOME/.dot"
export DOT_BOX
export DO_OS

echo "export DOT=\$HOME/.dot" > $DOT_CONF
echo "export DOT_OS=$DOT_OS" >> $DOT_CONF
echo "export DOT_BOX=$DOT_BOX" >> $DOT_CONF

source $DOT/bin/dot-link.sh
source $DOT/bin/dot-init.sh
