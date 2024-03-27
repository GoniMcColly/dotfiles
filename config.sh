#!/bin/sh

config_DIR=$(pwd)
echo $config_DIR


cd && cp -v $config_DIR/.bashrc .bashrc
cp -rv $config_DIR/wallpapers Pictures/.


cp -rv $config_DIR/.config .

cd /usr/share
cp -rv $config_DIR/usr/share/regolith* . || echo "Copy manually: sudo cp -rv "$config_DIR"/usr/share/regolith* /usr/share/." && return
cp -rv $config_DIR/usr/share/xfce4 . || return


cd /etc 
sudo cp -rv $config_DIR/etc/regolith . || echo "Copy etc file manually" && return
