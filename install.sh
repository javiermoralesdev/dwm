#!/bin/bash

git clone git@github.com:javiermoralesdev/dwm.git ~/.config/dwm

cd ~/.config/dwm

mkdir -p ~/.local/bin/

g++ volume.cpp -o ~/.local/bin/volume

mkdir -p ~/.local/share/dwm

ln -s ~/.config/dwm/autostart.sh ~/.local/share/dwm

chmod 755 ~/.local/bin/volume

sudo make clean install

sudo cp dwm.desktop /usr/share/xsessions

cp .xprofile $HOME

unzip UbuntuMono.zip

unzip Hack.zip

unzip FiraCode.zip

sudo mv *.ttf /usr/share/fonts

rm *.zip LICENSE readme.md *.txt

cd dwmblocks

sudo make clean install
