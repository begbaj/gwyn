## for two or more monitors to have independent
## desktop workspaces

for monitor in $(xrandr -q | grep -w 'connected' | cut -d' ' -f1); do
  bspc monitor "$monitor" -d "${MONITOR_WORKSPACE_NAMES[@]}"
done
