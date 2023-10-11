#!/bin/bash 

source ./vars.sh

display_height_px=($(wlr-randr | awk '/current/ {split($1,a,"x"); print a[2]}'))
rofi_side_px=$(printf "%.0f" $(echo "$display_height_px * 0.65" | bc))

cp $config_dir/rofi/config.rasi.bak $config_dir/rofi/config.rasi

sed -i "s/width.*/width: ${rofi_side_px}px;/" $config_dir/rofi/config.rasi
sed -i "s/height.*/height: ${rofi_side_px}px;/" $config_dir/rofi/config.rasi
