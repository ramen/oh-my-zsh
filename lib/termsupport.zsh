case "$TERM" in
  dumb)
    export PROMPT='%m:${PWD/#$HOME/~}%# '
    unsetopt zle
    ;;
esac
