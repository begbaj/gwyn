#!/usr/bin/env bash

# RICE=$THEME_NAME
RICE=$THEME_NAME

bg="#1A1B26"
fg="#BDC7D3"

black="#181b21"
red="#be5046"
green="#81ae5f"
yellow="#d19a66"
blackb="#5c6370"
redb="#e06c75"
greenb="#98c379"
yellowb="#e5c07b"

blue="#4889be"
magenta="#7560d3"
cyan="#49919a"
white="#abb2bf"
blueb="#61afef"
magentab="#8677cf"
cyanb="#56b6c2"
whiteb="#b8bfe5"

# xsettingsd Gtk theme vars
gtk_theme="Breeze-Dark"
gtk_icons="Breeze-Dark"
gtk_cursor="Breeze"

# -- BSPWM - Borders
B_BORDER_WIDTH="2"
B_NORMAL_BC="#14171C"
B_FOCUSED_BC="#5F5569"

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
P_CORNER_R="6"       # Corner radius (0 = disabled)
P_BLUR="false"       # Blur true|false
P_ANIMATIONS="@"     # (@ = enable) (# = disable)
P_TERM_OPACITY="1.0" # Terminal transparency. Range: 0.1 - 1.0 (1.0 = disabled)

# -- dunst
dunst_offset='(20, 60)'
dunst_origin='top-right'
dunst_transparency='8'
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
