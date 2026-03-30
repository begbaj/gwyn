#!/usr/bin/env bash

# ==============================================================================
# Dunst configurazion file
# ==============================================================================

global_monitor=0
global_follow="mouse"
global_width=300
global_height=300
global_origin="top-right"
global_offset="15x45"
global_shrink="no"
global_padding=10
global_horizontal_padding=10
global_gap_size=5
global_transparency=15
global_frame_width=2
global_frame_color=$white

global_corner_radius=8
global_corners="all"

global_progress_bar="true"
global_progress_bar_height=10
global_progress_bar_frame_width=1
global_progress_bar_min_width=150
global_progress_bar_max_width=300

global_font="Sans 10"
global_alignment="center"
global_vertical_alignment="center"
global_line_height=0
global_format="<span weight='bold' size='xx-large'>%s</span>\n%b"
global_markup="full"

global_notification_limit=5
global_indicate_hidden="yes"
global_show_age_threshold=60
global_stack_duplicates="true"
global_hide_duplicate_count="false"
global_ignore_newline="no"
global_ignore_dbusclose="false"
global_default_pause_level=0

global_enable_recursive_icon_lookup="true"
global_icon_theme="Adwaita"
global_icon_position="left"
global_min_icon_size=32
global_max_icon_size=64

global_history_length=20
global_enable_posix_regex="true"

global_mouse_left_click="close_current"
global_mouse_middle_click="do_action, close_current"
global_mouse_right_click="close_all"

urgency_low_background=$bg
urgency_low_foreground=$fg
urgency_low_frame_color=$bg
urgency_low_timeout=5

urgency_normal_background=$bg
urgency_normal_foreground=$fg
urgency_normal_frame_color=$bg
urgency_normal_timeout=10

urgency_critical_background=$red
urgency_critical_foreground=$fg
urgency_critical_frame_color=$red
urgency_critical_timeout=0
urgency_critical_override_pause_level=1
