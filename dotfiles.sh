#!/bin/bash
#
#   Replaces dotfiles and configuration files
#

rm $HOME/.bash_profile
ln -s "$(pwd)/dotfiles/.bash_profile" $HOME/.bash_profile
source $HOME/.bash_profile
printf '.bash_profile symlinked\n'

