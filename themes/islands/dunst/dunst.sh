#!/usr/bin/env bash

# ==============================================================================
# Dunst configuration file
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. Extra Variables (Dunst-Specific / Animations)
# ------------------------------------------------------------------------------
dunst_origin='bottom-left'
dunst_offset='(10, 10)'
dunst_font='Inconsolata Semi Condensed Bold 9'
dunst_icon_theme="Gruvbox-Plus-Dark"
dunst_border='0'
dunst_frame_color="$white"
dunst_corner_radius='6'
dunst_transparency='0.1'

dunst_open_direction="down"
dunst_open_preset="fly-in"
dunst_close_direction="down"
dunst_close_preset="fly-out"

# ------------------------------------------------------------------------------
# 2. Visual Appearance (Style & Geometry)
# ------------------------------------------------------------------------------
global_origin="top-right"
global_offset="15x45"
global_width=600
global_height=350
global_gap_size=5
global_shrink="no"

global_frame_width=2
global_frame_color=$white
global_corner_radius=8
global_corners="all"

global_transparency=15
global_padding=10
global_horizontal_padding=10

# ------------------------------------------------------------------------------
# 3. Typography & Content
# ------------------------------------------------------------------------------
global_font="Sans 10"
global_alignment="left"
global_vertical_alignment="left"
global_line_height=0

global_format="<span weight='bold' size='x-large'>%s</span>\n%b"
global_markup="full"
global_ignore_newline="no"
global_show_age_threshold=60

# ------------------------------------------------------------------------------
# 4. Icons
# ------------------------------------------------------------------------------
global_icon_position="left"
global_icon_theme="Adwaita"
global_enable_recursive_icon_lookup="true"
global_min_icon_size=32
global_max_icon_size=32

# ------------------------------------------------------------------------------
# 5. Progress Bar
# ------------------------------------------------------------------------------
global_progress_bar="true"
global_progress_bar_height=10
global_progress_bar_frame_width=1
global_progress_bar_min_width=150
global_progress_bar_max_width=300

# ------------------------------------------------------------------------------
# 6. Behavior & Interaction
# ------------------------------------------------------------------------------
global_mouse_left_click="do_action"
global_mouse_middle_click="close_current"
global_mouse_right_click=""

global_monitor=0
global_follow="mouse"
global_notification_limit=5
global_history_length=20
global_stack_duplicates="true"
global_hide_duplicate_count="false"
global_indicate_hidden="yes"
global_ignore_dbusclose="false"
global_enable_posix_regex="true"
global_default_pause_level=0

# ------------------------------------------------------------------------------
# 7. Urgency Levels
# ------------------------------------------------------------------------------
# Low
urgency_low_background="#666C"
urgency_low_foreground=$fg
urgency_low_frame_color="#6665"
urgency_low_timeout=5

# Normal
urgency_normal_background="#666C"
urgency_normal_foreground=$fg
urgency_normal_frame_color="#6665"
urgency_normal_timeout=10

# Critical
urgency_critical_background="${red}CC"
urgency_critical_foreground=$fg
urgency_critical_frame_color=$red
urgency_critical_timeout=0
urgency_critical_override_pause_level=1
