#!/bin/bash
#
#   Main script, runs other scripts to setup
#   most of my desktop environment, minus
#   a couple of desktop apps not available through
#   package managers.
#

# We need to move to the script's directory, because
# some things depend on it, like symlinking. We save the
# current directory first, so we can move back to it when
# we are done.
currentdir=$(pwd)
cd ${0%/*}

# ---- RESTORING DOTFILES
printf 'Restoring dotfiles...\n'; sleep 1
source ./dotfiles.sh; sleep 1

# ---- FOLDERS AND SYMLINKS
printf 'Creating folders and symlinks requires a volume named "Files" under /Volumes.\n'
read -p "Create folders and symlinks? (Y/N) : " -n 1 -r
echo  # empty line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./folders.sh; sleep 1
fi

# Setup the desktop environment
printf 'Setting up the desktop environment...\n'; sleep 1
source ./environment.sh; sleep 1
printf 'All done!\n'

# Moving back to our original directory
cd $currentdir