#!/usr/bin/env bash

# . "${HOME}/.config/bspwm/bin/.old/Process.bash"

# prepare for launching if restarting
#
killall picom
if pgrep -x polybar >/dev/null; then
  polybar-msg cmd quit >/dev/null 2>&1
  while pgrep -x polybar >/dev/null; do sleep 0.1; done
  # sarebbe utile fare una lista di programmi configurabili che vengono killati e rilanciati definibili dall'utente
fi
pkill -x dunst
sleep 0.5

P_CONF="$COMPILE_DIR/picom.conf"
P_RULE="$COMPILE_DIR/picom-rules.conf"
A_COLORS="$COMPILE_DIR/alacritty-colors.toml"
K_COLORS="$COMPILE_DIR/kitty-colors.conf"
D_CONFIG="$COMPILE_DIR/dunstrc"
X_CONFIG="$COMPILE_DIR/xsettingsd.conf"
R_CONFIG="$COMPILE_DIR/rofi-common.rasi"

for file in "$GLOBALS_DIR"/**/*.sh; do
  if [[ -f "$file" ]]; then
    source "$file"
  fi
done

for file in "$THEME_DIR"/{picom,bspwm,dunst,polybar}/**/*.sh; do
  if [[ -f "$file" && -r "$file" ]]; then
    source "$file"
  fi
done

for file in "$COMPILERS"/*.sh; do
  if [[ -f "$file" ]]; then
    source "$file"
  fi
done

run dunst -config "$COMPILE_DIR/dunstrc"
run picom --config "$COMPILE_DIR/picom.conf" -b

run xsettingsd --config="$COMPILE_DIR/xsettingsd"

sleep 0.5
# POLYBAR
for mon in $(polybar --list-monitors | cut -d":" -f1); do
  while IFS= read -r bar_name || [[ -n "$bar_name" ]]; do
    if [[ -n "$bar_name" ]]; then
      MONITOR=$mon polybar -q "$bar_name" -c "${THEME_DIR}/polybar/config.ini" &
    fi
  done <"${THEME_DIR}/polybar/bars.txt"
done
