#!/bin/sh

remaps &
unclutter &
feh --bg-scale ~/.local/share/wallpaper/arch.jpg &
sxhkd &
exec bspwm 
