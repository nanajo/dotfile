# .bashrc
#export LANG="ja_JP.UTF-8"

# set custom prompt
PS1="\
\[\e[32m\]\t>\[\e[00m\] \
\[\e[1;35m\]\h\[\e[00m\] \
[\[\e[1;4;33m\]\w\[\e[00m\]]\n\
\`
if [ \$? = 0 ]; then
  echo \[\e[1\;32m\];
else
  echo \[\e[1\;31m\];
fi
\`\
\u $ \[\e[00m\]"


# Complete AWS-CLI commands
#complete -C '/usr/local/bin/aws_completer' aws
complete -C '$(which aws_completer)' aws

#alias
alias ls='ls --color=auto'
alias ll="ls -l"
alias grep="grep --color -E"
alias ttp="toggle-synaptic-touchpad"

#Working config
test -r ~/.bashrc_awsint && . ~/.bashrc_awsint

#Rust
source $HOME/.cargo/env

#run tmux
#If the shell is not interactive, do not run tmux
[[ $- != *i* ]] && return
#No auto run tmux on ssh host
[[ -n "$SSH_TTY" ]] && return
#If the shell is not on tmux, run tmux with ssh-agent
[[ -z "$TMUX" ]] && exec ssh-agent tmux
