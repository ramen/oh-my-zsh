# Ramen theme - Based on Dark Blood and the old-school zsh elite prompts

function virtualenv_prompt_info {
    if [ $VIRTUAL_ENV ]; then
        echo "$ZSH_THEME_VIRTUALENV_PROMPT_PREFIX$(basename $VIRTUAL_ENV)$ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX"
    fi
}

PROMPT=$'%{$fg_bold[white]%}┌%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}%n%{$reset_color%}%{$fg_bold[white]%}@%{$fg_bold[black]%}%m%{$reset_color%}%{$fg[blue]%}]%{$fg_bold[white]%}-%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}%!%{$fg_bold[white]%}/%{$fg_bold[black]%}%y%{$reset_color%}%{$fg[blue]%}]%{$fg_bold[white]%}-%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}%D{%I:%M%P}%{$fg_bold[white]%}:%{$fg_bold[black]%}%D{%m/%d/%y}%{$reset_color%}%{$fg[blue]%}]%{$(git_prompt_info)%}%{$(virtualenv_prompt_info)%}
%{$fg_bold[white]%}└%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}%#%{$fg_bold[white]%}:%{$fg_bold[black]%}${PWD/#$HOME/~}%{$reset_color%}%{$fg[blue]%}]%{$fg_bold[white]%}>%{$reset_color%} '
PS2=$' %{$fg[blue]%}|%{$fg_bold[white]%}>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}-%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}git%{$fg_bold[white]%}:%{$fg_bold[black]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[blue]%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}*%{$reset_color%}"

ZSH_THEME_VIRTUALENV_PROMPT_PREFIX="%{$fg_bold[white]%}-%{$reset_color%}%{$fg[blue]%}[%{$fg_bold[black]%}workon%{$fg_bold[white]%}:%{$fg_bold[black]%}"
ZSH_THEME_VIRTUALENV_PROMPT_SUFFIX="%{$reset_color%}%{$fg[blue]%}]"
