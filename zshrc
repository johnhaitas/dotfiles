# .zshrc
# . global definitions
if [ -f /etc/zshrc ]; then . /etc/zshrc; fi

. ~/.zsh/os/identify
. ~/.zsh/config
. ~/.zsh/path
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then . ~/.localrc; fi

if [ -d ${HOME}/.oh-my-zsh ]; then
    # oh-my-zsh
    ZSH=${HOME}/.oh-my-zsh
    ZSH_THEME="robbyrussell"
    CUSTOM_ZSH_THEME="johnhaitas"

    if [ -f "${ZSH}/custom/themes/${CUSTOM_ZSH_THEME}.zsh-theme" ]; then
        ZSH_THEME="${CUSTOM_ZSH_THEME}"
    fi

    plugins=(kubectl docker $plugins)

    if [ -f ${ZSH}/oh-my-zsh.sh ]; then
        source ${ZSH}/oh-my-zsh.sh
        unsetopt correct_all
    fi
    # end oh-my-zsh
fi
