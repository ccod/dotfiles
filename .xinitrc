#!/bin/sh

xrdb .Xresources

dunst &
remaps &
unclutter &
feh --bg-scale ~/.local/share/wallpaper/arch.jpg &
sxhkd &
exec bspwm 
