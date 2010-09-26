# less.zsh - less customizations

export LESS=-cex4M

if [ -x /usr/bin/lesspipe ]; then
    eval "$(lesspipe)"
elif [ -x /usr/bin/lesspipe.sh ]; then
    export LESSOPEN="|/usr/bin/lesspipe.sh %s"
fi
