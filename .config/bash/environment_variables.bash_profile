#language
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#Command
#source-highlight for less
export LESS="-RN"
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"

#PATH
export PATH="$PATH:/usr/local/bin:/opt/local/bin:~/.local/bin"

#EDITOR
export EDITOR="vim"


#History
HISTSIZE=20000
HISTFILESIZE=20000
