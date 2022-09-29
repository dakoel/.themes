#!/usr/bin/env bash

config_exists () {
    [ -d ~/.config/$1 ]
}

dependencies=(bspwm kitty picom polybar rofi sxhkd)

for i in ${dependencies[@]}
do
    if config_exists $i
    then
        echo "Configuration for $i already exists!"
        exit 1
    fi
done

theme_directory=$(dirname $(dirname $(realpath $0)))
ln -s $theme_directory/bspwm ~/.config/bspwm
ln -s $theme_directory/picom ~/.config/picom
ln -s $theme_directory/polybar ~/.config/polybar
ln -s $theme_directory/rofi ~/.config/rofi
ln -s $theme_directory/sxhkd ~/.config/sxhkd
ln -s $theme_directory/kitty ~/.config/kitty
