# Regular
txtblk="$(tput setaf 0 2>/dev/null || echo '\e[0;30m')"  # Black
txtred="$(tput setaf 1 2>/dev/null || echo '\e[0;31m')"  # Red
txtgrn="$(tput setaf 2 2>/dev/null || echo '\e[0;32m')"  # Green
txtylw="$(tput setaf 3 2>/dev/null || echo '\e[0;33m')"  # Yellow
txtblu="$(tput setaf 4 2>/dev/null || echo '\e[0;34m')"  # Blue
txtpur="$(tput setaf 5 2>/dev/null || echo '\e[0;35m')"  # Purple
txtcyn="$(tput setaf 6 2>/dev/null || echo '\e[0;36m')"  # Cyan
txtwht="$(tput setaf 7 2>/dev/null || echo '\e[0;37m')"  # White

# Bold
bldblk="$(tput setaf 0 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;30m')"  # Black
bldred="$(tput setaf 1 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;31m')"  # Red
bldgrn="$(tput setaf 2 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;32m')"  # Green
bldylw="$(tput setaf 3 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;33m')"  # Yellow
bldblu="$(tput setaf 4 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;34m')"  # Blue
bldpur="$(tput setaf 5 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;35m')"  # Purple
bldcyn="$(tput setaf 6 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;36m')"  # Cyan
bldwht="$(tput setaf 7 2>/dev/null)$(tput bold 2>/dev/null || echo '\e[1;37m')"  # White

# Underline
undblk="$(tput setaf 0 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;30m')"  # Black
undred="$(tput setaf 1 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;31m')"  # Red
undgrn="$(tput setaf 2 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;32m')"  # Green
undylw="$(tput setaf 3 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;33m')"  # Yellow
undblu="$(tput setaf 4 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;34m')"  # Blue
undpur="$(tput setaf 5 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;35m')"  # Purple
undcyn="$(tput setaf 6 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;36m')"  # Cyan
undwht="$(tput setaf 7 2>/dev/null)$(tput smul 2>/dev/null || echo '\e[4;37m')"  # White

# Background
bakblk="$(tput setab 0 2>/dev/null || echo '\e[40m')"  # Black
bakred="$(tput setab 1 2>/dev/null || echo '\e[41m')"  # Red
bakgrn="$(tput setab 2 2>/dev/null || echo '\e[42m')"  # Green
bakylw="$(tput setab 3 2>/dev/null || echo '\e[43m')"  # Yellow
bakblu="$(tput setab 4 2>/dev/null || echo '\e[44m')"  # Blue
bakpur="$(tput setab 5 2>/dev/null || echo '\e[45m')"  # Purple
bakcyn="$(tput setab 6 2>/dev/null || echo '\e[46m')"  # Cyan
bakwht="$(tput setab 7 2>/dev/null || echo '\e[47m')"  # White

# Reset
txtrst="$(tput sgr 0 2>/dev/null || echo '\e[0m')"  # Text Reset
find_git_branch() {
  # Based on: http://stackoverflow.com/a/13003854/170413
  local branch
  if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
    if [[ "$branch" == "HEAD" ]]; then
      branch='detached*'
    fi
    git_branch="($branch)"
  else
    git_branch=""
  fi
}

find_git_dirty() {
  local status=$(git status --porcelain 2> /dev/null)
  if [[ "$status" != "" ]]; then
    git_dirty='*'
  else
    git_dirty=''
  fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"

# Default Git enabled prompt with dirty state
# export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Another variant:
# export PS1="\[$bldgrn\]\u@\h\[$txtrst\] \w \[$bldylw\]\$git_branch\[$txtcyn\]\$git_dirty\[$txtrst\]\$ "

# Default Git enabled root prompt (for use with "sudo -s")
# export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
