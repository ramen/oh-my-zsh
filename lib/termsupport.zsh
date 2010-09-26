case "$TERM" in
  dumb)
    export PROMPT='%m:%~%# '
    unsetopt zle
    ;;
esac
