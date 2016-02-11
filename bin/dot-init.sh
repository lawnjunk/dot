#!/bin/bash

echo  "what operating system uu working on? "
echo -n "> "
read DOT_OS
echo $DOT_OS

echo  "what uu call this box? "
echo -n "> "
read DOT_BOX

DOT_CONF="$HOME/.dot.conf"
echo "export DOT=\$HOME/.dot" > $DOT_CONF
echo "export DOT_OS=$DOT_OS" >> $DOT_CONF
echo "export DOT_BOX=$DOT_BOX" >> $DOT_CONF
