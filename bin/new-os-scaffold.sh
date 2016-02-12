#../os
#└── osx
#    ├── bin
#    ├── copy
#    ├── init
#    │   ├── depend
#    │   └── general
#    ├── link
#    └── source
#        ├── all
#        ├── bash
#        └── zsh

if [ ! $DOT ]; then
  echo "ERROR: DOT env var not set, aborting"
  exit 1
fi

[ $1 ] && OS=$1

if [ ! $OS ]; then 
  echo "what da name o d' new os?"
  echo -n "> "
  read OS
fi

mkdir -p $DOT/os/$1/source/all
touch $DOT/os/$1/source/all/.gitignore
mkdir -p $DOT/os/$1/source/bash
touch $DOT/os/$1/source/bash/.gitignore
mkdir -p $DOT/os/$1/source/zsh
touch $DOT/os/$1/source/zsh/.gitignore
mkdir -p $DOT/os/$1/link
touch $DOT/os/$1/link/.gitignore
mkdir -p $DOT/os/$1/init
touch $DOT/os/$1/init/.gitignore
mkdir -p $DOT/os/$1/init/depend
touch $DOT/os/$1/init/depend/.gitignore
mkdir -p $DOT/os/$1/init/general
touch $DOT/os/$1/init/general/.gitignore
mkdir -p $DOT/os/$1/copy
touch $DOT/os/$1/copy/.gitignore
mkdir -p $DOT/os/$1/bin
touch $DOT/os/$1/bin/.gitignore
