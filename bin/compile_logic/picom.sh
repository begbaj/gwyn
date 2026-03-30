# Copy global picom fragments, then override with theme-specific ones if present
cp $GLOBALS_DIR/picom/picom-* $COMPILE_DIR
if [[ -d "$THEME_DIR/picom" ]]; then
  cp $THEME_DIR/picom/picom-* $COMPILE_DIR 2>/dev/null
fi

cat <<EOF >"$P_CONF"
#################################
#             Shadows           #
#################################
shadow = ${P_SHADOWS:-false};
shadow-radius = ${P_SHADOW_RADIUS:-12};
shadow-opacity = ${P_SHADOW_OPACITY:-0.75};
shadow-offset-x = ${P_SHADOW_OFFSET_X:--15};
shadow-offset-y = ${P_SHADOW_OFFSET_Y:--15};
shadow-color = "${P_SHADOW_COLOR:-#000000}";

#################################
#           Fading              #
#################################
fading = ${P_FADING:-true};
fade-in-step = ${P_FADE_IN_STEP:-0.028};
fade-out-step = ${P_FADE_OUT_STEP:-0.03};
fade-delta = ${P_FADE_DELTA:-10};

inactive-opacity = ${P_INACTIVE_OPACITY:-1.0};
active-opacity = ${P_ACTIVE_OPACITY:-1.0};
frame-opacity = ${P_FRAME_OPACITY:-1.0};
inactive-opacity-override = ${P_INACTIVE_OP_OVERRIDE:-false};
inactive-dim = ${P_INACTIVE_DIM:-0.0};

#################################
#           Corners             #
#################################
corner-radius = ${P_CORNER_RADIUS:-0};
round-borders = ${P_ROUND_BORDERS:-1};

#################################
#     Background-Blurring       #
#################################
blur-method = "${P_BLUR_METHOD:-none}";
blur-size = ${P_BLUR_SIZE:-12};
blur-deviation = ${P_BLUR_DEVIATION:-false};
blur-strength = ${P_BLUR_STRENGTH:-5};
blur-background = ${P_BLUR_BACKGROUND:-false};
blur-background-frame = ${P_BLUR_BACKGROUND_FRAME:-false};
blur-background-fixed = ${P_BLUR_BACKGROUND_FIXED:-false};

#################################
#       General Settings        #
#################################
backend = "${P_BACKEND:-glx}";
vsync = ${P_VSYNC:-true};
mark-wmwin-focused = ${P_MARK_WMWIN_FOCUSED:-true};
mark-ovredir-focused = ${P_MARK_OVREDIR_FOCUSED:-true};
detect-rounded-corners = ${P_DETECT_ROUNDED_CORNERS:-true};
detect-client-opacity = ${P_DETECT_CLIENT_OPACITY:-true};
use-ewmh-active-win = ${P_USE_EWMH_ACTIVE_WIN:-false};
unredir-if-possible = ${P_UNREDIR_IF_POSSIBLE:-false};
detect-transient = ${P_DETECT_TRANSIENT:-true};
detect-client-leader = ${P_DETECT_CLIENT_LEADER:-true};
use-damage = ${P_USE_DAMAGE:-true};
xrender-sync-fence = ${P_XRENDER_SYNC_FENCE:-false};
transparent-clipping = ${P_TRANSPARENT_CLIPPING:-false};

#################################
#     Rules & Animations        #
#################################
rules: (
@include "picom-rules.conf"
${P_ANIMATIONS}include "picom-animations.conf"
)
EOF
