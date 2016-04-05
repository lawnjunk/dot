set -o vi
bind -m vi-insert "\C-i":shell-forward-word
bind -m vi-insert "\C-i":shell-forward-word
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-b":backward-word
bind -m vi-insert "\C-e":end-of-line
bind -m vi-insert "\C-a.":beginning-of-line
bind -m vi-insert "C-w.":backward-kill-word
bind -m vi-insert "tab":complete

