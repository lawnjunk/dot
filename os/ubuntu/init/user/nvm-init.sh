# install nvm

if [ ! -d "$HOME/.nvm" ]; then 
  env git clone https://github.com/creationix/nvm.git ~/.nvm || {
    echo "Error: git clone nvm fialed"
  }  

  pushd . 
  cd ~/.nvm 
  git checkout `git describe --abrev=0 --tags`
  popd
fi 
