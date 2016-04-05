num_colors=$(tput colors)
if [ num_colors ];then 
  txt_black="$(tput setaf 0)" #black
  txt_red="$(tput setaf 1)" #red
  txt_green="$(tput setaf 2)" #green
  txt_yellow="$(tput setaf 3)" #yellow
  txt_blue="$(tput setaf 4)" #blue
  txt_magenta="$(tput setaf 5)" #magenta
  txt_cyan="$(tput setaf 6)" #cyan
  txt_white="$(tput setaf 7)" #white
  txt_reset="$(tput sgr0)" #default foreground color
  btxt_black="$(tput setaf 0)" #black
  btxt_red="$(tput setab 1)" #red
  btxt_green="$(tput setab 2)" #green
  btxt_yellow="$(tput setab 3)" #yellow
  btxt_blue="$(tput setab 4)" #blue
  btxt_magenta="$(tput setab 5)" #magenta
  btxt_cyan="$(tput setab 6)" #cyan
  btxt_white="$(tput setab 7)" #white
else 
  txt_black="" #black
  txt_red="" #red
  txt_green="" #green
  txt_yellow="" #yellow
  txt_blue="" #blue
  txt_magenta="" #magenta
  txt_cyan="" #cyan
  txt_white="" #white
  btxt_black="" #black
  btxt_red="" #red
  btxt_green="" #green
  btxt_yellow="" #yellow
  btxt_blue="" #blue
  btxt_magenta="" #magenta
  btxt_cyan="" #cyan
  btxt_white="" #white
  txt_reset="$(tput sgr0)" #default foreground color
fi

