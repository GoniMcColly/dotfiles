#!/bin/sh

config_DIR=$(pwd)
home_DIR=$(cd && pwd)

# home
cd && cp -v "$config_DIR"/.bashrc "$home_DIR"/.bashrc
cp -r "$config_DIR"/wallpapers "$home_DIR"/Pictures && echo "Wallpapers copied"

# .config 
cp -r "$config_DIR"/.config "$home_DIR" && echo ".config copied"

# /usr/share files
sudo cp -r "$config_DIR"/usr/share/regolith* /usr/share && echo "Regolith /usr/share files copied" || return
sudo cp -r "$config_DIR"/usr/share/xfce4 /usr/share && echo "xfce4-terminal files copied" || return

#etc files
sudo cp -r "$config_DIR"/etc/regolith /etc && echo "regolith /etc files copied"  || return
