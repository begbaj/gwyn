#################################
# COLORS
#################################

black="#161616"
bright_black="#262626"
dark_black="#060606"

gray="#525252"
dark_gray="#393939"
bright_gray="#878D96"

white="#F2F4F8"
bright_white="#FFFFFF"
dark_white="#EEEEEE"

pink="#FF7EB6"
bright_pink="#FFC5DE"
dark_pink="#FF378E"

magenta="#EE5396"
bright_magenta="#F494BE"
dark_magenta="#E3166F"

red="#FF2233"
bright_red="#FF6975"
dark_red="#DA0011"

purple="#BE95FF"
bright_purple="#EADCFF"
dark_purple="#924EFF"

indigo="#78A9FF"
bright_indigo="#BFD6FF"
dark_indigo="#317CFF"

blue="#33B1FF"
bright_blue="#7ACCFF"
dark_blue="#0091EB"

cyan="#3DDBD9"
bright_cyan="#79E6E5"
dark_cyan="#21B0AE"

teal="#08BDBA"
bright_teal="#17F5F2"
dark_teal="#057877"

green="#42BE65"
bright_green="#77D090"
dark_green="#2F8949"

yellow="#F1C21B"
bright_yellow="#F5D45E"
dark_yellow="#B9930B"

orange="#FF832B"
bright_orange="#FFAD72"
dark_orange="#E35E00"

bg=$black
fg=$white

DE_BACKGROUND=$bg
DE_FOREGROUND=$fg
ACCENT_COLOR=$red

#################################
# xsettingsd
#################################
gtk_theme="Breeze-Dark"
gtk_icons="Breeze-Dark"
gtk_cursor="Bibata-Modern-Ice"

#################################
# ALACRITTY
#################################

a_background=$DE_BACKGROUND
a_foreground=$DE_FOREGROUND

a_cursor=$ACCENT_COLOR
a_text=$DE_FOREGROUND

a_normal_black=$black
a_normal_red=$red
a_normal_green=$green
a_normal_yellow=$yellow
a_normal_blue=$bright_blue
a_normal_magenta=$magenta
a_normal_cyan=$cyan
a_normal_white=$white

a_bright_black=$bright_black
a_bright_red=$bright_red
a_bright_green=$bright_green
a_bright_yellow=$bright_yellow
a_bright_blue=$bright_blue
a_bright_magenta=$bright_magenta
a_bright_cyan=$bright_cyan
a_bright_white=$bright_white

#################################
# BSPWM
#################################
B_BORDER_WIDTH="2"
B_NORMAL_BC="${bg}"
B_FOCUSED_BC="${ACCENT_COLOR}"

B_TOP_PADDING=15
B_BOTTOM_PADDING=5
B_LEFT_PADDING=5
B_RIGHT_PADDING=5

B_URGENT_BORDER_COLOR=${redb}
B_PRESEL_FEEDBACK_COLOR=${green}

#################################
# PICOM
#################################
P_ACTIVE_OPACITY=1.0
P_ANIMATIONS="@"
P_BACKEND="glx"
P_BLUR="true"
P_BLUR_BACKGROUND=false
P_BLUR_BACKGROUND_FIXED=false
P_BLUR_BACKGROUND_FRAME=false
P_BLUR_DEVIATION=false
P_BLUR_METHOD="dual_kawase"
P_BLUR_SIZE=12
P_BLUR_STRENGTH=5
P_CORNER_RADIUS=10
P_DETECT_CLIENT_LEADER=true
P_DETECT_CLIENT_OPACITY=true
P_DETECT_ROUNDED_CORNERS=true
P_DETECT_TRANSIENT=true
P_FADE="true"
P_FADE_DELTA=10
P_FADE_IN_STEP=0.028
P_FADE_OUT_STEP=0.03
P_FADING=true
P_FRAME_OPACITY=1.0
P_INACTIVE_DIM=0.0
P_INACTIVE_OPACITY=1.0
P_INACTIVE_OP_OVERRIDE=false
P_MARK_OVREDIR_FOCUSED=true
P_MARK_WMWIN_FOCUSED=true
P_ROUND_BORDERS=1
P_SHADOWS="true"
P_SHADOWS=false
P_SHADOW_COLOR="#000000"
P_SHADOW_OFFSET_X=-15
P_SHADOW_OFFSET_Y=-15
P_SHADOW_OPACITY=0.75
P_SHADOW_RADIUS=12
P_TERM_OPACITY="1.0"
P_TRANSPARENT_CLIPPING=false
P_UNREDIR_IF_POSSIBLE=false
P_USE_DAMAGE=true
P_USE_EWMH_ACTIVE_WIN=false
P_VSYNC=true
P_XRENDER_SYNC_FENCE=false
SHADOW_C="#000000"

#################################
# DUNST
#################################
dunst_offset='(10, 10)'
dunst_origin='bottom-left'
dunst_transparency='0.1'
dunst_corner_radius='6'
dunst_font='Inconsolata Semi Condensed Bold 9'
dunst_border='0'
dunst_frame_color="$white"
dunst_icon_theme="Gruvbox-Plus-Dark"

# animations
dunst_close_preset="fly-out"
dunst_close_direction="down"
dunst_open_preset="fly-in"
dunst_open_direction="right"

#################################
# ROFI
#################################
rofi_font="JetBrainsMono NF Bold 9"
rofi_background="$bg"
rofi_bg_alt="$black"
rofi_background_alt="${bg}E0"
rofi_fg="$fg"
rofi_selected="$cyan"
rofi_active="$green"
rofi_urgent="$yellow"

### END ###
