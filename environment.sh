#!/bin/bash
#
#   Setup the general desktop environment
#

# ---- SETUP HOMEBREW/CASK
printf 'Installing Homebrew and Cask...\n'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts
printf '...done.\n'

# ---- APPLICATIONS
printf 'Installing applications...\n'
brew install archey
brew install android-sdk
brew install weechat
brew install wget
brew install git
brew install python3
brew install bash-completion

brew install brew-cask
brew cask install java
brew cask install sublime-text3
brew cask install google-chrome
brew cask install google-drive
brew cask install spotify
brew cask install spotify-notifications
brew cask install vlc
brew cask install eclipse-java
brew cask install github-desktop
brew cask install transmission
brew cask install keepingyouawake
brew cask install android-studio
brew cask install android-file-transfer
brew cask install font-inconsolata
printf '...done.\n'
