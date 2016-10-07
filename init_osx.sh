#!/bin/bash

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# git
brew install git

# zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# powerline
brew install python # needs to come before vim, so it links to the brewed python
pip install powerline-status # no need for --user flag when using brewed python

# vim
brew install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo
# Launch vim and run :PluginInstall

# tmux
brew install tmux
brew install reattach-to-user-namespace

# iterm2
# Import fonts, launch iterm and import from iterm2-settings folder

# dotfiles
./init_dotfiles.sh

