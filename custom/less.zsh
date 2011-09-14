# less.zsh - less customizations

export LESS=-cex4MR

if [ -x /usr/bin/lesspipe ]; then
    eval "$(lesspipe)"
elif [ -x /usr/bin/lesspipe.sh ]; then
    export LESSOPEN="|/usr/bin/lesspipe.sh %s"
fi
