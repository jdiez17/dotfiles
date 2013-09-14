#!/usr/bin/env bash

PWD=$(pwd)
HOME=/home/$(whoami)

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME
ln -s $PWD/awesome $HOME/.config
ln -s $PWD/config/i3 $HOME/.config/i3
