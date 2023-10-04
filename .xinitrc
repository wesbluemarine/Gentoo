redshift &
sxhkd &
udiskie &
xbanish &
hsetroot -solid "aeaaaa" &
picom -c -l -15 -t -15 \
--shadow-radius 15 \
--shadow-green 1.0 \
--shadow-blue 1.0 \
--use-ewmh-active-win \
--shadow-exclude '!focused' &
xclickroot -m xfiles &
xclickroot -r pmenu.sh &
xrdb ~/.Xresources &
dbus-run-session shod -s
