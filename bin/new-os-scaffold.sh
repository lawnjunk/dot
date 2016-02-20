#../os
#└── osx
#    ├── bin
#    ├── copy
#    ├── init
#    │   ├── user
#    │   └── system
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

mkdir -p $DOT/os/$OS/source/all
touch $DOT/os/$OS/source/all/.gitignore
mkdir -p $DOT/os/$OS/source/bash
touch $DOT/os/$OS/source/bash/.gitignore
mkdir -p $DOT/os/$OS/source/zsh
touch $DOT/os/$OS/source/zsh/.gitignore
mkdir -p $DOT/os/$OS/link
touch $DOT/os/$OS/link/.gitignore
mkdir -p $DOT/os/$OS/init
touch $DOT/os/$OS/init/.gitignore
mkdir -p $DOT/os/$OS/init/system
touch $DOT/os/$OS/init/system/.gitignore
mkdir -p $DOT/os/$OS/init/user
touch $DOT/os/$OS/init/user/.gitignore
mkdir -p $DOT/os/$OS/copy
touch $DOT/os/$OS/copy/.gitignore
mkdir -p $DOT/os/$OS/bin
touch $DOT/os/$OS/bin/.gitignore

# unset variables
unset OS
