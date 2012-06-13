# aliases.zsh - Shell command aliases

# Don't laugh.
alias pine='TERM=rxvt alpine'

# Handy shortcut to resume partial scp transfers using rsync.
alias scpresume='rsync --partial --progress --rsh=ssh'

# As of sudo 1.7.4, $HOME is reset by default. Boo.
alias sudo='sudo HOME="$HOME"'

# Git blame with branches decoded
bblame() {
    git blame -l $1 | git name-rev --stdin --name-only
}
