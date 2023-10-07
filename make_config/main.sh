#!/bin/bash

export user=aj
export config_dir=/home/$user/.config 
export home=/home/$user

$config_dir/make_config/packages.sh

systemctl enable sshd
systemctl start sshd

ln $config_dir/.zshrc $home
cp -r $config_dir/.themes $home

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh) $user
