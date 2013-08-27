#!/usr/bin/env bash

PWD=$(pwd)
HOME=/home/$(whoami)

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim

