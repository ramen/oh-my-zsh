# environment.zsh - Environment variables and options

# Environment variables
export EDITOR='emacs -nw'
export LYNX_CFG=~/.lynxrc

# Match hidden files with wildcards
setopt globdots

# Make new files group-writable
umask 002
