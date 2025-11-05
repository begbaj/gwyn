# bspc config external_rules_command "${HOME}"/.config/bspwm/src/ExternalRules

bspc config window_gap "$BSPC_WINDOW_GAP"
bspc config border_width "$BSPC_BORDER_WIDTH"
bspc config split_ratio "$BSPC_SPLIT_RATIO"
bspc config single_monocle "$BSPC_SINGLE_MONOCLE"
bspc config borderless_monocle "$BSPC_BORDERLESS_MONOCLE"
bspc config gapless_monocle "$BSPC_GAPLESS_MONOCLE"

bspc config focus_follows_pointer "$BSPC_FOCUS_FOLLOWS_POINTER"
bspc config pointer_follows_focus "$BSPC_POINTER_FOLLOWS_FOCUS"
bspc config pointer_follows_monitor "$BSPC_POINTER_FOLLOWS_MONITOR"
bspc config pointer_motion_interval "$BSPC_POINTER_MOTION_INTERVAL"
bspc config pointer_modifier "$BSPC_POINTER_MODIFIER"
bspc config pointer_action1 "$BSPC_POINTER_ACTION1"
bspc config pointer_action2 "$BSPC_POINTER_ACTION2"
bspc config pointer_action3 "$BSPC_POINTER_ACTION3"

bspc rule -a scratch sticky=on state=floating focus=on
