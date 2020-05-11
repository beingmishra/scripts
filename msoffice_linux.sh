#!/bin/bash
#
# Script to install MS Office on linux 
#
#

# Wine
echo -e "\n ----------------  Installing Wine ---------------- \n"
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt install wine-stable

echo -e "\n Wine Installed \n"

# Play On Linux
echo -e "\n ----------------  Installing Play On Linux ---------------- \n"
wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
sudo wget http://deb.playonlinux.com/playonlinux_cosmic.list -O /etc/apt/sources.list.d/playonlinux.list
sudo apt-get install playonlinux

echo -e "\n Play On Linux Installed \n"

# Dependencies
echo -e "\n ----------------  Installing Dependencies ---------------- \n"
sudo apt-get install winbind winetricks

echo -e "\n Dependencies Installed \n"


echo -e "\n====================================\n"
echo -e "\n======== Installation Done =========\n"
echo -e "\n====================================\n"



