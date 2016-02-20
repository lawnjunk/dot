if [ -d "$HOME/.oh-my-zsh" ]; then 
  if [ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]; then 
    env git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting || {
    printf "Error: git clone zsh-syntax-highlighting failed\n"
  }
  fi
fi
