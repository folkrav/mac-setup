#!/bin/bash
#
#   Moves home folders to the secondary drive,
#   creates new ones and symlinks everything back
#   to ~.
#

# Move directories
printf 'Moving directories\n'
sudo mv $HOME/Documents/ /Volumes/Files/
sudo mv $HOME/Downloads/ /Volumes/Files/
sudo mv $HOME/Movies/ /Volumes/Files/
sudo mv $HOME/Music/ /Volumes/Files/
sudo mv $HOME/Pictures/ /Volumes/Files/

# Create additional folders
printf 'Creating more directories\n'
mkdir /Volumes/Files/bin/
mkdir /Volumes/Files/Development/
mkdir /Volumes/Files/Google\ Drive/
mkdir /Volumes/Files/Torrent/

# Create symlinks
printf 'Symlinking folders\n'
ln -s /Volumes/Files/Development $HOME
ln -s /Volumes/Files/Documents $HOME
ln -s /Volumes/Files/Downloads $HOME
ln -s /Volumes/Files/Google\ Drive $HOME
ln -s /Volumes/Files/Movies $HOME
ln -s /Volumes/Files/Music $HOME
ln -s /Volumes/Files/Pictures $HOME
ln -s /Volumes/Files/Torrent $HOME
ln -s /Volumes/Files/bin $HOME
