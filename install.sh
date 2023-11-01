#!/bin/bash
cd ~/.config/dwm

mkdir -p ~/.local/bin/

g++ volume.cpp -o ~/.local/bin/volume

mkdir -p ~/.local/share/dwm

ln -s ~/.config/dwm/autostart.sh ~/.local/share/dwm

chmod 755 ~/.local/bin/volume

sudo make clean install

sudo cp dwm.desktop /usr/share/xsessions

cp .xprofile $HOME

cd dwmblocks

sudo make clean install
