#!/usr/bin/env bash 

#festival --tts $HOME/.config/qtile/welcome_msg &
(conky -c $HOME/.config/qtile/scripts/system-overview) &
#lxsession &
#picom &
#nitrogen --restore &
#/usr/bin/emacs --daemon &
#volumeicon &
nm-applet &

## Start picom
picom -CGb --experimental-backend &

## screen extention
xrandr --output DP2 --auto --right-of DP1

## Launch nitrogen before launching plank
nitrogen --restore &

## light-locker
light-locker &

