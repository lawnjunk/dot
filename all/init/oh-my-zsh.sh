# install oh-my-zsh
if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  printf "   You already have Oh My Zsh installed.\n"
  printf "   You'll need to remove $ZSH if you want to re-install.\n"
fi

if [ ! -d "$ZSH" ]; then 
  env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
    printf "Error: git clone of oh-my-zsh repo failed\n"
  }
fi

if [ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]; then 
  env git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting || {
    printf "Error: git clone zsh-syntax-highlighting failed\n"
  }
fi
