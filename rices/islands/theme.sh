#!/usr/bin/env bash
RICE=$THEME_NAME

#PALETTE

bg="#1A1B26"
fg="#BDC7D3"

black="#161616"
base="#161616"
surface="#262626"
gray_dark="#393939"
gray="#525252"
gray_light="#878d96"
base="#dde1e6"
bright="#f2f4f8"
white="#ffffff"
pink="#ff7eb6"
magenta="#ee5396"
red="#FF2233"
purple="#be95ff"
indigo="#78a9ff"
blue="#33b1ff"
cyan="#3ddbd9"
teal="#08bdba"
green="#42be65"
yellow="#f1c21b"
orange="#ff832b"

ACCENT_COLOR="${red}"

# xsettingsd Gtk theme vars
gtk_theme="Breeze-Dark"
gtk_icons="Breeze-Dark"
gtk_cursor="Bibata-Modern-Ice"

# -- BSPWM - Borders
B_BORDER_WIDTH="2"
B_NORMAL_BC="${bg}"
B_FOCUSED_BC="${ACCENT_COLOR}"

B_TOP_PADDING=15
B_BOTTOM_PADDING=5
B_LEFT_PADDING=5
B_RIGHT_PADDING=5

B_URGENT_BORDER_COLOR=${redb}
B_PRESEL_FEEDBACK_COLOR=${green}

# -- PICOM
P_FADE="true"        # Fade true|false
P_SHADOWS="true"     # Shadows true|false
SHADOW_C="#000000"   # Shadow color
P_CORNER_R="10"      # Corner radius (0 = disabled)
P_BLUR="true"        # Blur true|false
P_ANIMATIONS="@"     # (@ = enable) (# = disable)
P_TERM_OPACITY="1.0" # Terminal transparency. Range: 0.1 - 1.0 (1.0 = disabled)

# -- dunst
dunst_offset='(10, 10)'
dunst_origin='bottom-left'
dunst_transparency='10'
dunst_corner_radius='6'
dunst_font='Inconsolata Semi Condensed Bold 9'
dunst_border='0'
dunst_frame_color="$white"
dunst_icon_theme="Gruvbox-Plus-Dark"

### - animations
dunst_close_preset="fly-out"
dunst_close_direction="up"
dunst_open_preset="fly-in"
dunst_open_direction="right"

# -- ROFI
rofi_font="JetBrainsMono NF Bold 9"
rofi_background="$bg"
rofi_bg_alt="$black"
rofi_background_alt="${bg}E0"
rofi_fg="$fg"
rofi_selected="$cyan"
rofi_active="$green"
rofi_urgent="$yellow"

# -- SLOCK
sl_bg="${bg}"
sl_fg="${black}"
sl_ring="${magenta}"
sl_wrong="${red}"
sl_date="${black}"
sl_verify="${green}"
