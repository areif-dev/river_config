#!/bin/bash

source ./vars.sh

$config_dir/make_config/packages.sh
$config_dir/make_config/make-rofi-config.sh

systemctl enable sshd
systemctl start sshd

ln $config_dir/.zshrc $home
cp -r $config_dir/.themes $home

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh) $user
