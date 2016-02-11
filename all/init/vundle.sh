# install vundle
mkdir -p ~/.vim/bundle

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ];then 
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null || {
  echo "failed: to clone down Vundle"
}
  vim -e -c ":PluginInstall" -c ":q" -c ":q"
else 
  echo "   You already have Vundle installed."
  echo "   You'll need to remove $HOME/.vim/bundle/Vundle.vim if you want to re-install."
  vim -e -c ":PluginInstall" -c ":q" -c ":q"
fi

