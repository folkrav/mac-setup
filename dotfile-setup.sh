#!/bin/bash
#
#   Replaces dotiles with symlinks to this version.
#

printf 'Removing .bash_profile...'
rm $HOME/.bash_profile
printf 'Creating symlink...'
ln -s ./.bash_profile $HOME/.bash_profile
source $HOME/.bash_profile
printf '.bash_profile restored.'