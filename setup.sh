#!/bin/bash
#
#   Main script, runs other scripts to setup
#   most of my desktop environment, minus
#   a couple of desktop apps not available through
#   package managers.
#

# Dotfiles under mac-setup/dotfiles/ to be restored
DOTFILES=".zshrc"

#------------------------------------
# Utility functions
#------------------------------------

# Shows a yes/no choice, usage :
# >  confirm && command_to_execute
confirm() {
    read -r -p "${1:-Make a choice [y/N]} : " response
    case $response in [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}


#------------------------------------
# Execution
#------------------------------------
#scriptdir=${0%/*}
#
## ---- RESTORING DOTFILES
#symdot() {
#    mkdir -p $scriptdir/dotfiles/backup
#    for f in $DOTFILES ; do
#        if [ -L $HOME/$f ] ; then
#            rm $HOME/$f
#            printf "Previous symlink to $f found and removed.\n"
#        fi
#        if [ -f $HOME/$f ] ; then
#            mv $HOME/$f $scriptdir/dotfiles/backup
#            printf "Previous $f found and backed up.\n"
#        fi
#        ln -s $scriptdir/dotfiles/$f $HOME
#        printf "$f symlinked in $HOME.\n"
#    done
#    source ~/.zshrc
#}
#printf 'Restore dotfiles?\n'
#confirm && symdot

# ---- FOLDERS AND SYMLINKS
printf 'Symlink stuff? Creating folders and symlinks\nrequires a volume named "Files" under /Volumes.\n'
confirm && source $scriptdir/folders.sh

# Setup the desktop environment
printf 'Do you want to install applications?\n'
printf 'Installing Homebrew and Cask...\n'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

printf 'Installing applications...\n'
while read b; do # Brew packages
    brew install $b
done <brewpackages.txt
while read bc; do # Brew Cask packages
    brew cask install $bc
done <caskpackages.txt

# Moving back to our original directory
printf 'All done!\n'
