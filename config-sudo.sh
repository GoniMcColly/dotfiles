#!/bin/sh

config_DIR=$(pwd)
home_DIR=$(cd && pwd)


# /usr/share files
sudo cp -r "$config_DIR"/usr/share/regolith* /usr/share && echo "Regolith /usr/share files copied" || return
sudo cp -r "$config_DIR"/usr/share/xfce4 /usr/share && echo "xfce4-terminal files copied" || return

#etc files
sudo cp -r "$config_DIR"/etc/regolith /etc && echo "regolith /etc files copied"  || return
