# virtualenv.zsh - virtualenvwrapper and pip
# from mitsuhiko's dotfiles

if [ `id -u` != '0' ]; then
    export VIRTUALENV_USE_DISTRIBUTE=1
    export WORKON_HOME=$HOME/.virtualenvs
    [ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh
    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
fi
