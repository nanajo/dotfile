#!/bin/bash
[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xrandr --output Virtual-1 --mode "3840x2160"
eval `ssh-agent -s`
exec wmaker 
