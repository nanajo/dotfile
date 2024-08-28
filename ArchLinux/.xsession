#!/bin/bash
[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
eval `ssh-agent -s`
exec wmaker 
