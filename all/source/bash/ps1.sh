# set PS1 (prompt)
ps1_dir="\\[\$(tput setab 7)\\] \\[\$txt_black\\]\\W "
ps1_ttys="\\[\$(tput setab 5)\\]\\[\$txt_white\\] \\l "
ps1_jobs="\\[\$(tput setab 6)\\]\\[\$txt_black\\]\\j\\[\$(tput sgr0)\\]"
ps1_git="\\[\$(tput bold)\\] \\[\$txt_red\\]\$git_branch\\[\$txt_white\\]\$git_dirty\\[\$txt_white\\]"
ps1_end="\n☞ \\[\$(tput sgr0)\\] " 

export PS1="${ps1_dir}${ps1_ttys}${ps1_jobs}${ps1_git}${ps1_end}"
