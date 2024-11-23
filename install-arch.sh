#!/bin/bash
paru -S --needed --noconfirm picom-arian8j2-git hilbish bat eza rofi playerctl light pactl dunst eww

test -d ~/.config || mkdir -p ~/.config
test -d ~/.local/bin || mkdir -p ~/.local/bin

sudo cp -r ./fonts/CartographCF\ Nerd\ Font/* /usr/share/fonts

sudo cp -r ./fonts/MaterialIcons/* /usr/share/fonts

cp -r ./cfg/* ~/.config
cp -r ./bin/* ~/.local/bin
cp -r ./home/.Xresources ~

cd ~/.config/dwm
sudo make clean install