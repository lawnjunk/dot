#!/bin/env zsh

CASE_SENSITIVE="true" # dont let me cheat

# set pushd options
setopt auto_pushd # mk cd push old dir on dirstack
setopt pushd_ignore_dups # no dup in dirstack
setopt pushd_silent # no printing dirstack after pushd or popd

# set zsh history options
HISTFILE=~/.zsh_history
HISTSIZE=1024                  # big history
SAVEHIST=1024                  # big history
setopt no_share_history        # disable share history between sessions
setopt append_history          # append to history
setopt inc_append_history      # add commands to hist as you enter them
setopt bang_hist               # !keyword

#set zsh options 
setopt extended_glob    # activate complex globbbbbbing
setopt glob_dots        # include dotfiles in globing

#setopt print_exit_value # print exit value if not 0
setopt no_clobber       # let me overwrite files
setopt rm_star_silent   # dont ask me if i want to delete
setopt chase_links      # resolve symlinks

# configrue zle
bindkey -v                           # enable vim mode
bindkey -M viins 'ii' vi-cmd-mode    # map ii to escape key
bindkey "^W" backward-kill-word      # ctl-w delete word backward insert mode
bindkey -a "^W" backward-kill-word   # ctl-w delete word backward normal mode
bindkey "^H" backward-delete-char    # Control-h also deletes the previous char
bindkey "^U" backward-kill-line      # ctl-u delete cur line insert mode
bindkey -a "^U" backward-kill-line   # ctl-u delete cur line normal mode
bindkey "^?" backward-delete-char    # delete key to work like normal
bindkey -a 'L' vi-end-of-line        # shift l jumps to end of line in normal mode
bindkey -a 'H' vi-beginning-of-line  # shift h jumps to beginning of lin in normal mode
bindkey '^a' vi-beginning-of-line    # ctl a jumps to beginning of line insert mode
bindkey -a '^a' vi-beginning-of-line # ctl a jumps to beginning of line normal mode
bindkey '^e' vi-end-of-line          # cta e jumps to end of line insert mode
bindkey -a '^e' vi-end-of-line       # cta e jumps to end of line normal mode
bindkey '^r' history-incremental-pattern-search-backward


# C-x C-e edit this command in vim 
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# [Shift - Tab] move through the completion menu backwards :)
if [[ "${terminfo[kcbt]}" != "" ]]; then
	bindkey "${terminfo[kcbt]}" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi

# config zsh highlight colors
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets cursor root line)
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[globbing]=fg=green
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=magenta
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=magenta
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow
ZSH_HIGHLIGHT_STYLES[path]=fg=cyan
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=yellow
