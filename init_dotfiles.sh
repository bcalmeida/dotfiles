#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

function init_file {
	if [ -f ~/$1 ]; then
		rm ~/$1
	fi
	ln -s ${BASEDIR}/$1 ~/$1
	echo "$1 initiated"
}

# vim
init_file .vimrc

# git
init_file .gitconfig
init_file .gitignore_global

# bash
init_file .bash_profile

# zsh
init_file .zshrc

# tmux
init_file .tmux.conf

# vi mode
echo "bind -v" > ~/.editrc              # GNU readline
echo "set editing-mode vi" > ~/.inputrc # BSD libedit
