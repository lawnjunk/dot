# install powerline fonts

if [ ! -f "$HOME/Library/Fonts/Literation Mono Powerline Bold.ttf" ]; then 
  mkdir $DOT/.tmp
  echo "   installing powerline-fonts"
  env git clone https://github.com/powerline/fonts.git $DOT/.tmp || {
    echo "   Error: git clone of powerline fots failed"
  }

  $($DOT/.tmp/install.sh) || {
    echo "   Error: unable to install powerline fonts"
}
  rm -rf $DOT/.tmp

fi
