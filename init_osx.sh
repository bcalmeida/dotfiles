#!/bin/bash

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# git
brew install git

# vim
brew install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Launch vim and run :PluginInstall

# zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# powerline
brew install python
pip install --user powerline-status

# iterm2
# Launch iterm and import from dotfiles/iterm2, and also import fonts

# dotfiles
./init_dotfiles.sh

