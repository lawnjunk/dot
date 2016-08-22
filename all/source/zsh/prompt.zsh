# Comment
NEWLINE=$'\n'
YELLA=$(tput setaf 147)
GEENN=$(tput setab 80)
PROMPT='%{$YELLA%}%c$(git_prompt_text)%{$reset_color%}${NEWLINE}${${KEYMAP/vicmd/$vim_nrm_mode}/(main|viins)/$vim_ins_mode}  ☞  '

RPROMPT=""

#RPROMPT='%{$bg[green]%}$(git_prompt_info)%{$reset_color%} $(git_prompt_status)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
#ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[white]%} ✈"
#ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[white]%} ✭"
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[white]%} ➦"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[white]%} ✂ "
##
# set RPROMPT to vi mode 
vim_ins_mode="%{$fg_bold[151]%}[I]%{$reset_color%}%"
vim_nrm_mode="%{$fg_bold[red]%}[N]%{$reset_color%}%" 

function git_prompt_text {
  local g_info g_status
  g_info="$(git_prompt_info)"
  [ $g_info ] && echo "%{$reset_color%} %{$GEENN%}%{$fg[black]%}[$g_info]"
}

function zle-line-init zle-keymap-select {
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
