# install vundle
mkdir -p ~/.vim/bundle

if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ];then 
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null || {
    echo "failed: to clone down Vundle"
  }
  vim -c ":PluginInstall" -c ":q" -c ":q"
fi
