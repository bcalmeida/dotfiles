#!/bin/bash

# git
sudo apt-get install git-all

# zsh
# TODO

# powerline
# TODO

# vim
sudo apt-get install vim-gnome # vim-gnome has clipboard support and other features
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo
# Launch vim and run :PluginInstall

# tmux
# install from source, as apt-get is rather outdated
# install any dependency packages needed for building
#sudo apt-get install -y exuberant-ctags cmake libevent-dev libncurses5-dev
# download link from official http://tmux.github.io/ site
wget https://github.com/tmux/tmux/releases/download/2.3/tmux-2.3.tar.gz
tar xvf tmux-2.3.tar.gz
# compile
cd tmux-2.3
./configure && make
sudo make install
cd ..

# dotfiles
# TODO

# bashrc: add export TERM="xterm-256color"!!! -> so vim and tmux can catch it
