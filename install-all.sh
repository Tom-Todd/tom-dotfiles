#!/bin/bash

printf "***********************************************\n"
printf "*        Installing all packages              *\n"
printf "***********************************************\n"
printf "Getting Git\n"
sudo pacman -Syu git
printf "Installing Yay Package Manager\n"
mkdir ~/yay
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
printf "Installing zsh\n"
yay -S zsh --noconfirm
printf "Getting prezto\n"
yay -S prezto-git --noconfirm
printf "Getting Yakuake\n"
yay -S yakuake --noconfirm
printf "***********************************************\n"
printf "*        Installing daily use tools           *\n"
printf "***********************************************\n"
yay -S alsa-utils atom darktable discord firefox mirage intellij-idea-ultimate-edition discord --noconfirm
printf "Installing fonts\n"
yay -S adobe-source-han-sans-jp-fonts --noconfirm
printf "Installing Wine and Lutris\n"
yay -S wine-staging winetricks lutris-git --noconfirm
printf "Installing Japanese language tools\n"
yay -S ibus-anthy --noconfirm
