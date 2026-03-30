## for two or more monitors to have independent
## desktop workspaces

monitors=$(xrandr --listactivemonitors | awk -F' ' 'NR>1 {print $NF}')
for monitor in $monitors; do
  bspc monitor "$monitor" -d "${MONITOR_WORKSPACE_NAMES[@]}"
done
