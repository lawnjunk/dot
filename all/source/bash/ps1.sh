# set PS1 (prompt)

# args <contetn> <fg_color> <bg_color>
get_ps1_section(){
  local content="$1"
  local fg="$2"
  local bg="$3"
  echo "\[$(tput setaf $fg)\]\[$(tput setab $bg)\]$content\[$(tput sgr0)\]"
}

#get_random_ps1_section(){
  #local content="$1"
  #local bg="$((RANDOM % 214 + 17))"
  #local fg="$(( 256 - bg ))"
  #echo "\[$(tput bold)\]\[$(tput setaf $fg)\]\[$(tput setab $bg)\]$content\[$(tput sgr0)\]"
#}

#ps1_dir="$(get_random_ps1_section ' \W ' 16 7)"
#ps1_ttys="$(get_random_ps1_section ' \l ' 7 5)"
#ps1_pid="$(get_random_ps1_section ' $$ ' 16 203)"
#ps1_jobs="$(get_random_ps1_section '\j' 16 6)"
#ps1_git="$(get_ps1_section ' ${git_branch}$(tput setaf 15)${git_dirty}' 9 0)"
#ps1_end='\n\m \[$(tput setaf 15)\]☞ \[$(tput sgr0) '

ps1_dir="$(get_ps1_section ' \W ' 16 7)"
ps1_ttys="$(get_ps1_section ' \l ' 7 5)"
ps1_pid="$(get_ps1_section ' $$ ' 16 203)"
ps1_jobs="$(get_ps1_section '\j' 16 6)"
ps1_git="$(get_ps1_section ' ${git_branch}$(tput setaf 15)${git_dirty}' 9 0)"
ps1_end='\n\m \[$(tput setaf 15)\]☞ \[$(tput sgr0) '

export PS1="${ps1_dir}${ps1_ttys}${ps1_pid}${ps1_jobs}${ps1_git}${ps1_end}"
