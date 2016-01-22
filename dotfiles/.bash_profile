if [[ $- == *i* ]]
then
	
    ## Homebrew Cask settings
    export HOMEBREW_CASK_OPTS="--appdir=/Applications"
    export PATH="/usr/local/bin:$PATH"

    ## Custom user scripts
    export PATH=$PATH:$HOME/bin

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
    alias bp='nano ~/mac-setup/dotfiles/.bash_profile'
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

