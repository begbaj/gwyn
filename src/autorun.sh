# # Set system vars for polybar
# "$HOME"/.config/bspwm/src/SetSysVars
source "$SRC_DIR/functions.sh"

# SYSTEM-----------------------------------------------------------
# polkit
# run_polkit lxsession
# lxsession autostarts all *.desktop in /etc/xdg/autostart/
# many apps like picom and firewall-applet are automatically started
# lxsession should be run before bspwm itself, so put something
# like:
#         lxsession -s bspwm -e LXDE &
# in your .xinitrc
#
# run firewall-applet
# run protonmail-bridge
# by it

# this resolves Java application problems that may not display otherwise
run wmname LG3D

# set screen locker
run xss-lock slock
xset s on
xset 600

# run thunderbird-beta --headless

# -----------------------------------------------------------------

# WALLPAPER MANAGER------------------------------------------------
run "$HOME/.local/bin/autowall" -a
# -----------------------------------------------------------------

# OTHER APPS-------------------------------------------------------
