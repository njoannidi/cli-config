#!/usr/bin/env bash

# Configures:
# Bash:
#   Updated Prompt
#   Git Prompt
# Vim:
#   Theme: Monokai
#   Vundle
#       Airline
#       Fugitive
#       CtrlP
#       Nerd Tree
#       Vim-Node
#       Vim-Coffee-Script

# Dependencies
# -------------
# Git
# Bash Completion
# Vim

VundleRepo='https://github.com/gmarik/Vundle.vim.git'
DateString=`date +%y-%m-%d_%H-%M-%S`
BackupDirectory=~/dotbak-${DateString}

# Backup current config files
mkdir ${BackupDirectory}
cp ~/.vimrc ${BackupDirectory}
cp ~/.bashrc ${BackupDirectory}

# Update Settings Files
cp ./vimrc ~/.vimrc
cp ./bashrc ~/.bashrc

# Install Vundle
mkdir ~/.vim/bundle
git clone ${VundleRepo} ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Update Colors
ln -s ~/.vim/bundle/vim-colorschemes/colors/ ~/.vim/colors

# Run your new Bash RC
source ~/.bashrc

# All done!
