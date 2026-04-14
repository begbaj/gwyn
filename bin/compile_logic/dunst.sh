cat >$D_CONFIG <<EOF
[global]
    background = "#282c34CC"
    frame_color = "#ffffff33"

    monitor = ${global_monitor}
    follow = ${global_follow}
    width = ${global_width}
    height = ${global_height}
    origin = ${global_origin}
    offset = ${global_offset}
    shrink = ${global_shrink}
    padding = ${global_padding}
    horizontal_padding = ${global_horizontal_padding}
    gap_size = ${global_gap_size}
    transparency = ${global_transparency}
    frame_width = ${global_frame_width}
    frame_color = "${global_frame_color}"
    corner_radius = ${global_corner_radius}
    corners = ${global_corners}
    progress_bar = ${global_progress_bar}
    progress_bar_height = ${global_progress_bar_height}
    progress_bar_frame_width = ${global_progress_bar_frame_width}
    progress_bar_min_width = ${global_progress_bar_min_width}
    progress_bar_max_width = ${global_progress_bar_max_width}
    font = "${global_font}"
    alignment = ${global_alignment}
    vertical_alignment = ${global_vertical_alignment}
    line_height = ${global_line_height}
    format = "${global_format}"
    markup = ${global_markup}
    notification_limit = ${global_notification_limit}
    indicate_hidden = ${global_indicate_hidden}
    show_age_threshold = ${global_show_age_threshold}
    stack_duplicates = ${global_stack_duplicates}
    hide_duplicate_count = ${global_hide_duplicate_count}
    ignore_newline = ${global_ignore_newline}
    ignore_dbusclose = ${global_ignore_dbusclose}
    default_pause_level = ${global_default_pause_level}
    enable_recursive_icon_lookup = ${global_enable_recursive_icon_lookup}
    icon_theme = "${global_icon_theme}"
    icon_position = ${global_icon_position}
    min_icon_size = ${global_min_icon_size}
    max_icon_size = ${global_max_icon_size}
    history_length = ${global_history_length}
    enable_posix_regex = ${global_enable_posix_regex}
    mouse_left_click = ${global_mouse_left_click}
    mouse_middle_click = ${global_mouse_middle_click}
    mouse_right_click = ${global_mouse_right_click}

[urgency_low]
    background = "${urgency_low_background}"
    foreground = "${urgency_low_foreground}"
    frame_color = "${urgency_low_frame_color}"
    timeout = ${urgency_low_timeout}

[urgency_normal]
    background = "${urgency_normal_background}"
    foreground = "${urgency_normal_foreground}"
    frame_color = "${urgency_normal_frame_color}"
    timeout = ${urgency_normal_timeout}

[urgency_critical]
    background = "${urgency_critical_background}"
    foreground = "${urgency_critical_foreground}"
    frame_color = "${urgency_critical_frame_color}"
    timeout = ${urgency_critical_timeout}
    override_pause_level = ${urgency_critical_override_pause_level}

EOF
