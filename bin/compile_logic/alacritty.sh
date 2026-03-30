cat >$A_COLORS <<EOF
# Default colors
[colors.primary]
background = "${a_background}"
foreground = "${a_foreground}"

# Cursor colors
[colors.cursor]
cursor = "${a_cursor}"
text = "${a_text}"

# Normal colors
[colors.normal]
black = "${a_normal_black}"
red = "${a_normal_red}"
green = "${a_normal_green}"
yellow = "${a_normal_yellow}"
blue = "${a_normal_blue}"
magenta = "${a_normal_magenta}"
cyan = "${a_normal_cyan}"
white = "${a_normal_white}"

# Bright colors
[colors.bright]
black = "${a_bright_black}"
red = "${a_bright_red}"
green = "${a_bright_green}"
yellow = "${a_bright_yellow}"
blue = "${a_bright_blue}"
magenta = "${a_bright_magenta}"
cyan = "${a_bright_cyan}"
white = "${a_bright_white}"
EOF
