if [[ $- == *i* ]]
then
	
    ## Homebrew Cask settings
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"

    ## Custom user scripts
    PATH=$PATH:$HOME/bin

    ## Bash prompt variables
    export PS1="\n\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h \[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]--> "

    ## Aliases
    # defaults
    alias ll='ls -lhAFG'
    alias mkdir='mkdir -pv'
    alias wget='wget -c'
    alias ping='ping -c 5'
    # safety nets
    alias mv='mv -i'
    alias cp='cp -i'
    alias ln='ln -i'
    # shortcuts
    alias bp='nano ~/.bash_profile'

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

