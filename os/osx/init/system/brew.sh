# install brew if it doesent yet exist
if ! type brew > /dev/null; then  
  url="$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  /usr/bin/ruby -e "$url"
fi

# update brew and install all the things
brew update
brew install alpine automake cloc cmake cmatrix cowsay ctags elinks git go htop httpie irssi mongodb nethack nmap nvm phantomjs pstree python python3 ruby sl the_silver_searcher tmux tree unrar vim w3m zsh 
