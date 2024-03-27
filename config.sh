#!/bin/sh

if [ `id -u` -ne 0 ]
  then echo Please run this script using sudo!
  exit
fi

original_user=$(who am i | awk '{print $1}')
config_DIR=$(pwd)
home_DIR=$(/home/"$original_user")

# home
cd && cp -v "$config_DIR"/.bashrc "$home_DIR"/.bashrc
cp -rv "$config_DIR"/wallpapers "$home_DIR"/Pictures/.

# .config 
cp -rv "$config_DIR"/.config "$home_DIR"/.

# /usr/share files
cp -r "$config_DIR"/usr/share/regolith* /usr/share/. && echo "Regolith usr/share files copied" || return
cp -r "$config_DIR"/usr/share/xfce4 /usr/share/. && echo "xfce4-terminal files copied" || return

#etc files
cp -r "$config_DIR"/etc/regolith /etc/. && echo "regolith /etc files copied"  || echo "Copy etc file manually" && return
