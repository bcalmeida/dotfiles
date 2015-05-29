#!/bin/bash

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# git
brew install git

# vim
brew install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Launch vim and run :PluginInstall

# autonev
brew install autoenv

# iterm2 and solarized
# TODO

# Set dotfiles
./setup.sh

