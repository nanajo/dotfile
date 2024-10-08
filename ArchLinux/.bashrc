# .bashrc
#Load custom config
for CONF in $(find ~/.config/bash/ -name *.bashrc);
do
	source ${CONF}
done

#run tmux
#If the shell is not interactive, do not run tmux
[[ $- != *i* ]] && return
#No auto run tmux on ssh host
[[ -n "$SSH_TTY" ]] && return
#Ignore vscode
[[ ${TERM_PROGRAM} == "vscode" ]] && return
#If the shell is not on tmux, run tmux with ssh-agent
#[[ -z "$TMUX" ]] && exec ssh-agent tmux
sshagent_count=$(ps aux|grep ssh-agent|grep -v grep| wc -l)
case "$sshagent_count" in
	0) 
		[[ -z "$TMUX" ]] && exec ssh-agent tmux
		;;
	*)
		[[ -z "$TMUX" ]] && exec tmux
		;;
esac
