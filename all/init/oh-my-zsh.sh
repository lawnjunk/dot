# install oh-my-zsh
if [ ! -n "$ZSH" ]; then
  ZSH=~/.oh-my-zsh
fi

if [ -d "$ZSH" ]; then
  printf "${YELLOW}You already have Oh My Zsh installed.${NORMAL}\n"
  printf "You'll need to remove $ZSH if you want to re-install.\n"
  exit
fi

env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $ZSH || {
  printf "Error: git clone of oh-my-zsh repo failed\n"
  exit 1
}
            }
