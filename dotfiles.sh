#!/bin/bash
#
#   Replaces dotiles with symlinks to this version.
#

printf 'Removing .bash_profile...\n'
rm $HOME/.bash_profile
printf 'Creating symlink...\n'
ln -s "$(pwd)/dotfiles/.bash_profile" $HOME/.bash_profile
source $HOME/.bash_profile
printf '.bash_profile restored.\n'