#!/usr/bin/env bash

PWD=$(pwd)
HOME=/home/$(whoami)

mkdir -p $HOME/.config
mkdir -p $HOME/.config/i3status
mkdir -p $HOME/.config/dunst

ln -s $PWD/dunst/dunstrc $HOME/.config/dunst/dunstrc
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/config/i3 $HOME/.config/i3
ln -s $PWD/i3status/config $HOME/.config/i3status/config
ln -s $PWD/ttytterrc $HOME/.config/.ttytterrc
ln -s $PWD/bin $HOME/bin
ln -s $PWD/Xresources $HOME/.Xresources
ln -s $PWD/dunstrc $HOME/.config/dunst/dunstrc
ln -s $PWD/ghci $HOME/.ghci

xrdb -merge $HOME/.Xresources
