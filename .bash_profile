# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
	. ~/.bashrc
fi

export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_VARIANT=intl
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=dwl
export CLUTTER_BACKEND=wayland
export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export LITE_SCALE=1.0
export QT_QPA_PLATFORM="wayland;xcb"
export XCURSOR_SIZE=24 
export _JAVA_AWT_WM_NONREPARENTING=1


# If running from tty1 start dwl
[ "$(tty)" = "/dev/tty1" ] && ~/.local/bin/startdwl
