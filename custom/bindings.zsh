# bindings.zsh - Keyboard bindings

# Alt-Enter to run in background
bindkey -s "^[\r" "^e &\r"

# Ctrl-W to kill region, like Emacs
bindkey "^W" kill-region

# Escape sequences for various terminals I use
bindkey "\eOc" emacs-forward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e[1;5C" emacs-forward-word
bindkey "\e[1;5D" emacs-backward-word
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[F" end-of-line
bindkey "\e[H" beginning-of-line
