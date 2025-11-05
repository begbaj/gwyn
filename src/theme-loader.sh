#!/usr/bin/env bash

# Terminate or reload existing processes if necessary.
. "${HOME}/.config/bspwm/bin/Process.bash"

function set_bspwm_config() {
  bspc config border_width ${B_BORDER_WIDTH}

  bspc config top_padding ${B_TOP_PADDING}
  bspc config bottom_padding ${B_BOTTOM_PADDING}
  bspc config left_padding ${B_LEFT_PADDING}
  bspc config right_padding ${B_RIGHT_PADDING}

  bspc config normal_border_color "${B_NORMAL_BC}"
  bspc config focused_border_color "${B_FOCUSED_BC}"

  bspc config urgent_border_color "${B_URGENT_BORDER_COLOR}"
  bspc config presel_feedback_color "${B_PRESEL_FEEDBACK_COLOR}"

  bspc rule -a scratch sticky=on state=floating focus=on

  source "$HOME/.config/bspwm/rices/$RICE/bspwm/config.bash"
}

function set_alacritty() {
  cat >"$HOME"/.config/alacritty/rice-colors.toml <<EOF
# Default colors
[colors.primary]
background = "${bg}"
foreground = "${fg}"

# Cursor colors
[colors.cursor]
cursor = "${magentab}"
text = "${bg}"

# Normal colors
[colors.normal]
black = "${black}"
red = "${red}"
green = "${green}"
yellow = "${yellow}"
blue = "${blue}"
magenta = "${magenta}"
cyan = "${cyan}"
white = "${white}"

# Bright colors
[colors.bright]
black = "${blackb}"
red = "${redb}"
green = "${greenb}"
yellow = "${yellowb}"
blue = "${blueb}"
magenta = "${magentab}"
cyan = "${cyanb}"
white = "${whiteb}"
EOF

}

function set_kitty() {

  # Set kitty colorscheme
  cat >"$HOME"/.config/kitty/current-theme.conf <<EOF
# The basic colors
foreground              ${fg}
background              ${bg}
selection_foreground    ${bg}
selection_background    ${greenb}

# Cursor colors
cursor                  ${fg}
cursor_text_color       ${bg}

# URL underline color when hovering with mouse
url_color               ${blueb}

# Kitty window border colors
active_border_color     ${magentab}
inactive_border_color   ${blackb}
bell_border_color       ${yellowb}

# Tab bar colors
active_tab_foreground   ${bg}
active_tab_background   ${magentab}
inactive_tab_foreground ${fg}
inactive_tab_background ${black}
tab_bar_background      ${bg}

# The 16 terminal colors

# black
color0 ${black}
color8 ${blackb}

# red
color1 ${red}
color9 ${redb}

# green
color2  ${green}
color10 ${greenb}

# yellow
color3  ${yellow}
color11 ${yellowb}

# blue
color4  ${blue}
color12 ${blueb}

# magenta
color5  ${magenta}
color13 ${magentab}

# cyan
color6  ${cyan}
color14 ${cyanb}

# white
color7  ${white}
color15 ${whiteb}
EOF

  pidof -q kitty && killall -USR1 kitty

}

# Terminal colors
set_term_config() {
  # let user decide if and which emulators should be affected
  echo "not implemented"
}

# Set compositor configuration
set_picom_config() {
  picom_conf_file="$HOME/.config/bspwm/src/config/picom.conf"
  picom_rules_file="$HOME/.config/bspwm/src/config/picom-rules.conf"

  sed -i "$picom_conf_file" \
    -e "s/shadow = .*/shadow = ${P_SHADOWS};/" \
    -e "s/shadow-color = .*/shadow-color = \"${SHADOW_C}\"/" \
    -e "s/fading = .*/fading = ${P_FADE};/" \
    -e "s/corner-radius = .*/corner-radius = ${P_CORNER_R}/"

  sed -i "$picom_rules_file" \
    -e "95s/	opacity = .*/	opacity = 1;/"

  if [[ "$ANIMATIONS" = "true" ]]; then
    sed -i "$picom_rules_file" \
      -e '/picom-animations/c\@include "picom-animations.conf"'
  else
    sed -i "$picom_rules_file" \
      -e '/picom-animations/c\#@include "picom-animations.conf"'
  fi
}

# Set dunst config
set_dunst_config() {
  dunst_config_file="$HOME/.config/bspwm/src/config/dunstrc"

  sed -i "$dunst_config_file" \
    -e "s/transparency = .*/transparency = 0/g" \
    -e "s/icon_theme = .*/icon_theme = \"${gtk_icons}, Adwaita\"/g" \
    -e "s/frame_color = .*/frame_color = \"${bg}\"/g" \
    -e "s/separator_color = .*/separator_color = \"${white}\"/g" \
    -e "s/font = .*/font = Inconsolata Semi Condensed Bold 9/g" \
    -e "s/foreground='.*'/foreground='${magenta}'/g"

  sed -i '/urgency_low/Q' "$dunst_config_file"
  cat >>"$dunst_config_file" <<-_EOF_
		[urgency_low]
		timeout = 3
		background = "${bg}"
		foreground = "${green}"

		[urgency_normal]
		timeout = 5
		background = "${bg}"
		foreground = "${fg}"

		[urgency_critical]
		timeout = 0
		background = "${bg}"
		foreground = "${red}"
	_EOF_
}

# Set eww colors
set_eww_colors() {
  cat >"$HOME"/.config/bspwm/eww/colors.scss <<EOF
\$bg: ${bg};
\$bg-alt: ${black};
\$fg: ${fg};
\$black: ${blackb};
\$red: ${red};
\$green: ${green};
\$yellow: ${yellow};
\$blue: ${blue};
\$magenta: ${magenta};
\$cyan: ${cyan};
\$archicon: #0f94d2;
EOF
}

set_launchers() {
  # Jgmenu
  sed -i "$HOME"/.config/bspwm/src/config/jgmenurc \
    -e "s/color_menu_bg = .*/color_menu_bg = ${bg}/" \
    -e "s/color_norm_fg = .*/color_norm_fg = ${fg}/" \
    -e "s/color_sel_bg = .*/color_sel_bg = ${black}/" \
    -e "s/color_sel_fg = .*/color_sel_fg = ${whiteb}/" \
    -e "s/color_sep_fg = .*/color_sep_fg = ${blackb}/"

  # Rofi launchers
  cat >"$HOME"/.config/bspwm/src/rofi-themes/shared.rasi <<EOF
// Rofi colors for Isabel

* {
    font: "Terminess Nerd Font Mono Bold 10";
    background: ${bg};
    bg-alt: ${black};
    background-alt: ${bg}E0;
    foreground: ${fg};
    selected: ${magentab};
    active: ${green};
    urgent: ${redb};

    img-background: url("~/.config/bspwm/rices/${RICE}/rofi.webp", width);
}
EOF

  # Screenlock colors
  sed -i "$HOME"/.config/bspwm/src/ScreenLocker \
    -e "s/bg=.*/bg=${bg:1}/" \
    -e "s/fg=.*/fg=${fg:1}/" \
    -e "s/ring=.*/ring=${bg:1}/" \
    -e "s/wrong=.*/wrong=${red:1}/" \
    -e "s/date=.*/date=${fg:1}/" \
    -e "s/verify=.*/verify=${green:1}/"
}

set_appearance() {

  # Set the gtk theme corresponding to rice
  sed -i "$HOME"/.config/bspwm/src/config/xsettingsd \
    -e "s|Net/ThemeName .*|Net/ThemeName \"$gtk_theme\"|" \
    -e "s|Net/IconThemeName .*|Net/IconThemeName \"$gtk_icons\"|" \
    -e "s|Gtk/CursorThemeName .*|Gtk/CursorThemeName \"$gtk_cursor\"|"

  sed -i -e "s/Inherits=.*/Inherits=$gtk_cursor/" "$HOME"/.icons/default/index.theme

  # Reload daemon and apply gtk theme
  pidof -q xsettingsd && killall -HUP xsettingsd
  xsetroot -cursor_name left_ptr
}

# Apply Geany Theme
set_geany() {
  sed -i ${HOME}/.config/geany/geany.conf \
    -e "s/color_scheme=.*/color_scheme=$geany_theme.conf/g"
}

# Launch theme
launch_theme() {
  # Launch dunst notification daemon
  dunst -config "${HOME}"/.config/bspwm/src/config/dunstrc &

  # Launch polybar
  sleep 0.1
  for mon in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$mon polybar -q isa-bar -c "${HOME}"/.config/bspwm/rices/"${RICE}"/config.ini &
  done
}

set_bspwm_rules() {
  source "$HOME/.config/bspwm/rices/$RICE/bspwm/rules.bash"
}

### Apply Configurations
log "theme-loader executing functions"
set_bspwm_config
# set_term_config
set_picom_config
set_dunst_config
# set_eww_colors
# set_launchers
set_appearance
# set_geany
set_bspwm_rules
launch_theme
log "theme-loader functions executed"
