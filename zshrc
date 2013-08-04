# .zshrc
# . global definitions
if [ -f /etc/zshrc ]; then . /etc/zshrc; fi

. ~/.zsh/os/identify
. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/path

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then . ~/.localrc; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
