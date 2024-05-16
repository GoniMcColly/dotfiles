#!/bin/sh

config_DIR=$(pwd)
home_DIR=$(cd && pwd)

# home
cd && cp -v "$config_DIR"/.bashrc "$home_DIR"/.bashrc
cp -r "$config_DIR"/wallpapers "$home_DIR"/Pictures && echo "Wallpapers copied"

# .config 
cp -r "$config_DIR"/.config "$home_DIR" && echo ".config copied"

