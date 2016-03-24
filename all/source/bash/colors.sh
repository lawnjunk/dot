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
  txt_forground="$(tput sgr0)" #default foreground color
else 
  txt_black="" #black
  txt_red="" #red
  txt_green="" #green
  txt_yellow="" #yellow
  txt_blue="" #blue
  txt_magenta="" #magenta
  txt_cyan="" #cyan
  txt_white="" #white
  txt_forground="" #default foreground color
fi

