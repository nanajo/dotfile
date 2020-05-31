#!/bin/bash
#set Environment variables
#language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
#Command
#source-highlight for less
export LESS="-RN"
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
#PATH
export PATH="$PATH:/usr/local/bin:/opt/local/bin:~/bin"
#EDITOR
export EDITOR="vim"
