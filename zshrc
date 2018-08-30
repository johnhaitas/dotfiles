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
    ZSH_THEME="johnhaitas"

    plugins=(kubectl docker $plugins)

    if [ -f ${ZSH}/oh-my-zsh.sh ]; then
        source ${ZSH}/oh-my-zsh.sh
        unsetopt correct_all
    fi
    # end oh-my-zsh
fi
