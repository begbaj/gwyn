## for two or more monitors to have independent
## desktop workspaces
for monitor in $(xrandr -q | grep -w 'connected' | cut -d' ' -f1); do
  bspc monitor "$monitor" -d "${MONITOR_WORKSPACE_NAMES[@]}"
done

xrandr --output DP-4 --mode 1920x1080 --primary --rate 144 --right-of HDMI-0
xrandr --output HDMI-0 --mode 1920x1080 --left-of DP-4
