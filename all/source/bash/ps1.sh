# set PS1 (prompt)
export PS1="\[$(tput setab 7)\] \[$txt_black\]\W \[$(tput sgr0)\]\[$(tput bold)\] \[$txt_red\]\$git_branch\[$txt_white\]\$git_dirty\[$txt_white\]☞ \[$(tput sgr0)\] "
