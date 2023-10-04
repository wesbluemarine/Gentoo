#!/bin/sh
# Use dmenu to launch or raise and focus running applications
# https://github.com/urukrama/dotfiles_loka/blob/master/scripts/Dmenu_raise.sh

CMD=$(dmenu_path | dmenu -i -b)

# if no instance of the app has been started, launch one now
if [ -z "`wmctrl -lx | grep -i $CMD`" ]; then
    $CMD &
else
    # search for existing app on any desktop and move it to the current desktop
    app_on_any_desk=`wmctrl -lx | grep -i $CMD | cut -d ' ' -f 1`
    wmctrl -i -R $app_on_any_desk
    #wmctrl -i -a $app_on_any_desk
fi;
