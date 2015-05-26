#!/bin/bash

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# vim
brew install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# git
brew install git

# autonev
brew install autoenv

# iterm2 and solarized
# TODO

# Set dotfiles
./setup.sh

