#!/bin/bash

source ./vars.sh

$config_dir/make_config/zypp-to-dnf.sh
$config_dir/make_config/packages.sh
$config_dir/make_config/make-rofi-config.sh

systemctl enable sshd
systemctl start sshd

cp -r $config_dir/.themes $home

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install the zsh autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln $config_dir/.zshrc $home
