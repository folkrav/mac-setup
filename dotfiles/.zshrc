## Homebrew Cask settings
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#
#  File : .zshrc
#  Author : Jean-Sebastien Beaulieu
#  Date : 2016/01/25
#  Description : N/A 
#

## Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=30000
setopt autocd beep nomatch notify
unsetopt appendhistory extendedglob
bindkey -v

## Lines added by compinstall
zstyle :compinstall filename '/home/jsbeaulieu/.zshrc'

autoload -Uz compinit
compinit

## Path
export PATH="/usr/local/bin:$PATH:$HOME/bin"

## Prettify things
autoload -U colors && colors
NEWLINE=$'\n'
PROMPT="%{$fg_no_bold[cyan]%}%1\[%~] %{$reset_color%}"
export SPROMPT="Correct $fg[yellow]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "
source $HOME/bin/git_status.zsh

## Aliases
# defaults
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias ping='ping -c 5'
alias nano='nano -c'
# safety nets
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
# shortcuts
alias zs='nano $HOME/.zshrc'
alias zsl='source ~/.zshrc'
alias ll='ls -lAFG'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
