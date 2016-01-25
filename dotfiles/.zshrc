## Homebrew Cask settings
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

## Path
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/bin"

## PROMPT settings
autoload -U colors && colors
NEWLINE=$'\n'
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[cyan]%}%1\[%~] %{$reset_color%}${NEWLINE}→ "

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
alias bp='nano $HOME/mac-setup/dotfiles/.bash_profile'
alias zp='nano $HOME/mac-setup/dotfiles/.zshrc'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
