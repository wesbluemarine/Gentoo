# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

# If running from tty1 start dwl
[ "$(tty)" = "/dev/tty1" ] && ~/.local/bin/startdwl
