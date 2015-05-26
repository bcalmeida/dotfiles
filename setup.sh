#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/.vimrc ~/.vimrc

# git
ln -s ${BASEDIR}/.gitconfig ~/.gitconfig

# bash
ln -s ${BASEDIR}/.bash_profile ~/.bash_profile
