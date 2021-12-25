# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_OPTIONS=intl

# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec ~/dwl_drag/dwl -s ~/somebar/build/somebar
sleep 2;swaybg -c '#f2e5bc' &
