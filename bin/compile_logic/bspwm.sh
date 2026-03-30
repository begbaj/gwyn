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
