#!/bin/bash

std_packages=(
    alacritty
    blueman
    bluez
    dunst
    MozillaFirefox
    MozillaFirefox-branding-upstream
    grim
    KeePassXC
    libopenssl-devel
    libreoffice
    neovim
    NetworkManager
    NetworkManager-tui
    openssh
    openssl
    patterns-devel-base-devel_basis  # This is a pattern 
    pavucontrol
    river
    rofi-wayland
    rustup
    saja-cascadia-code-fonts
    swaybg
    swayidle
    swaylock
    torbrowser-launcher 
    waybar
    xwayland
    zsh
)

dnf makecache 
dnf distro-sync

dnf install $std_packages
