#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc

# git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig
ln -s ${BASEDIR}/.gitignore_global ~/.gitignore_global

# bash
ln -s ${BASEDIR}/.bash_profile ~/.bash_profile
