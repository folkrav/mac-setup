#!/bin/bash
#
#   Main script, runs other scripts to setup
#   most of my desktop environment, minus
#   a couple of desktop apps not available through
#   package managers.
#

# ---- RESTORING DOTFILES
printf 'Restoring dotfiles...'
sleep 1
source ./dotfile-setup.sh

# ---- FOLDERS AND SYMLINKS
printf 'Creating folders and symlinks requires a volume named "Files" under /Volumes.'
read -p "Do you want to continue? (Y/N) : " -n 1 -r
echo  # empty line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sleep 1
    source ./folder-setup.sh
fi

# Setup the desktop environment
printf 'Now setting up the desktop environment...'
sleep 1
source ./env-setup.sh
