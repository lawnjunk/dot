# install nvm

if [ ! -d "$HOME/.nvm" ]; then 
  env git clone https://github.com/creationix/nvm.git ~/.nvm && 
  cd ~/.nvm && 
  git checkout `git describe --abbrev=0 --tags` || {
    echo "Error: failed to install nvm"
  }  
fi 
