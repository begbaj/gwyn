#!/bin/bash

# Get the ID of the currently focused monitor
current_monitor=$(bspc query -M -m focused)

# Save the ID of the currently focused desktop on this monitor
current_desktop=$(bspc query -D -d focused)

# Save all node IDs on the current monitor's focused desktop
current_monitor_nodes=$(bspc query -N -d $current_desktop)

# Switch to the next monitor and get its ID
next_monitor=$(bspc query -M -m next.local)
bspc monitor -f next

# Save the ID of the currently focused desktop on the next monitor
next_monitor_desktop=$(bspc query -D -d focused)

# Save all node IDs on the next monitor's focused desktop
next_monitor_nodes=$(bspc query -N -d $next_monitor_desktop)

# Output for verification (optional)
echo "Current Monitor ID: $current_monitor"
echo "Current Monitor's Focused Desktop ID: $current_desktop"
echo "Current Monitor's Nodes: $current_monitor_nodes"

echo "Next Monitor ID: $next_monitor"
echo "Next Monitor's Focused Desktop ID: $next_monitor_desktop"
echo "Next Monitor's Nodes: $next_monitor_nodes"
