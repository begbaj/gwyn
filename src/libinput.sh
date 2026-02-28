# touchpad
# touchpad id - get it via xinput list
tid=9

#tap-to-click
xinput set-prop $tid "libinput Tapping Enabled" 1

#tap-and-drag
xinput set-prop $tid "libinput Tapping Drag Enabled" 1

#horizontal scroll
xinput set-prop $tid "libinput Horizontal Scroll Enabled" 1
