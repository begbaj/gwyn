# # Set system vars for polybar
# "$HOME"/.config/bspwm/src/SetSysVars

source "$HOME/.config/bspwm/src/functions.sh"
run sxhkd -c "$HOME/.config/bspwm/src/sxhkdrc"
run picom --config "$HOME/.config/bspwm/src/config/picom.conf" -b
run "$HOME/.local/bin/autowall" -a
run wmname LG3D # this resolves Java application problems that may not display otherwise
# run dunst
run xss-lock slock

## this needs refactoring, but it only
## sets the time for screensaver
xset s on
xset 600
run_polkit lxsession
# run xsettingsd --config="$HOME/.config/bspwm/src/config/xsettingsd"
