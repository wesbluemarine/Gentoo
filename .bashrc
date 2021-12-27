# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
shopt -s checkwinsize
shopt -s autocd
complete -cf doas
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export HISTCONTROL=ignoredumps
export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=xcb
export LITE_SCALE=1.0

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\[\e[1m\]\w\  \[\e[0m\] ${RESET}"
