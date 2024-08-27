#!/bin/bash
[ -f ~/.xprofile ] && source ~/.xprofile
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec wmaker 
