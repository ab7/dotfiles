#!/bin/bash
###########################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~dotfiles
###########################

########## Variables
dir=~/dotfiles_mac
olddir=~/dotfiles_old    # existing dotfiles backup dir
files=".bash_profile .vimrc .vim"
##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles dir
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  if [ -e ~/$file ]; then
    echo "Moving $file from ~ to $olddir"
    mv -f ~/$file ~/dotfiles_old/
  fi
  echo "Creating symlink to $file in home directory."
  if [ -d $file ]; then
    ln -s $dir/$file/ ~/$file
  else
    ln -s $dir/$file ~/$file
  fi
done

