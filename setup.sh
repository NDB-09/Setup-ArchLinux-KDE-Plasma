#!/bin/bash

echo "Hello $USER"
sleep 1

echo "#############################################
#########==> SYSTEM WILL SETUP <===##########
#############################################"

#Update system
echo "Update system......."
sudo pacman -Syu

#Setting VIM, GIT

echo "Setting Vim......."
sudo pacman -S vim

echo "Setting Git......."
sudo pacman -S git

#Setting yay
echo "Setting yay........"
git clone https://aur.archlinux.org/yay.git
ls -l
cd yay
makepkg -si

#Setting chrome
echo "Setting Chrome"
yay -S google-chrome

#Srtting python, java, C
echo "Setting Python, Java, C"
sudo pacman -S python gcc gdb cmake
sudo pacman -S jdk25-openjdk
