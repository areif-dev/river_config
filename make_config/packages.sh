#!/bin/bash

std_packages=(
    alacritty
    base-devel
    discord 
    dunst
    firefox
    grim
    libreoffice-fresh
    neovim
    networkmanager
    openssh
    otf-cascadia-code
    pavucontrol
    river
    swayidle
    swaylock
    torbrowser-launcher 
    waybar
    xorg-xwayland
    zsh
)

aur_packages=(
    freetube-bin 
    rofi-lbonn-wayland
)

# Enable 5 parallel downloads at a time in pacman 
sed -i 's/#ParallelDownloads = 5/ParallelDownloads = 5/' /etc/pacman.conf

pacman -Syu
pacman -S $std_packages
