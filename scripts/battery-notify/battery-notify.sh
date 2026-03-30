#!/bin/bash

LOW_LEVEL_1=35
LOW_LEVEL_2=25
LOW_LEVEL_3=15
CRITICAL_LEVEL=10
# for dunstify to replace notification instead of stacking
NOTIF_ID=99102
BAT_PATH=$(find /sys/class/power_supply/ -name "BAT*" | head -n 1)

if [ -z "$BAT_PATH" ]; then
  echo "No battery found in /sys/class/power_supply/"
  exit 1
fi

capacity=$(cat "${BAT_PATH}/capacity")
status=$(cat "${BAT_PATH}/status")

if [ "$status" = "Charging" ] || [ "$status" = "Full" ]; then
  dunstify -C $NOTIF_ID
  rm /tmp/battery-notify.lowbat*
  exit 0
fi

if [ "$capacity" -le "$CRITICAL_LEVEL" ]; then
  dunstify -u critical \
    -r $NOTIF_ID \
    -a "System" \
    -i "battery-empty" \
    "Critically Low Battery: ${capacity}%" \
    "Plug in your charger immediately or the system will shut down."

elif [ "$capacity" -le "$LOW_LEVEL_3" ] && [ ! -f /tmp/battery-notify.lowbat1 ]; then
  dunstify -u normal \
    -r $NOTIF_ID \
    -a "System" \
    -i "battery-caution" \
    "Battery Low: ${capacity}%" \
    "Consider finding a power source soon."
  touch /tmp/battery-notify.lowbat1
elif [ "$capacity" -le "$LOW_LEVEL_2" ] && [ ! -f /tmp/battery-notify.lowbat2 ]; then
  dunstify -u normal \
    -r $NOTIF_ID \
    -a "System" \
    -i "battery-caution" \
    "Battery Low: ${capacity}%" \
    "Consider finding a power source soon."
  touch /tmp/battery-notify.lowbat2
elif [ "$capacity" -le "$LOW_LEVEL_1" ] && [ ! -f /tmp/battery-notify.lowbat3 ]; then
  dunstify -u normal \
    -r $NOTIF_ID \
    -a "System" \
    -i "battery-caution" \
    "Battery Low: ${capacity}%" \
    "Consider finding a power source soon."
  touch /tmp/battery-notify.lowbat3
fi
