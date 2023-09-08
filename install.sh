#!/bin/bash

git clone https://github.com/javiermoralesdev/dwm.git ~/.config/dwm

cd ~/.config/dwm

g++ volume.cpp -o ~/.local/bin/volume

mkdir -p ~/.local/share/dwm

ln -s ~/.config/dwm/autostart.sh ~/.local/share/dwm

chmod 755 ~/.local/bin/volume

sudo make clean install

sudo cp dwm.desktop /usr/share/xsessions

cd dwmblocks

sudo make clean install

sudo pacman -S pacman-contrib pamixer --noconfirm

cp .xprofile $HOME
