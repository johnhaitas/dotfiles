# .bashrc
# . global definitions
if [ -f /etc/bashrc ]; then . /etc/bashrc; fi

# User specific
. ~/.bash/path
. ~/.bash/os/identify
. ~/.bash/aliases
. ~/.bash/completions
. ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then . ~/.localrc; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
if [ -d "${NVM_DIR} ]; then
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
