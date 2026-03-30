cat >$R_CONFIG <<-EOF
* {
    font: "${rofi_font}";
    background: ${rofi_background};
    bg-alt: ${rofi_bg_alt};
    background-alt: ${rofi_background_alt};
    foreground: ${rofi_fg};
    selected: ${rofi_selected};
    active: ${rofi_active};
    urgent: ${rofi_urgent};
}
EOF

# Copy global rofi themes, then override with theme-specific ones
cp $GLOBALS_DIR/rofi/*.rasi $COMPILE_DIR 2>/dev/null
if [[ -d "$THEME_DIR/rofi" ]]; then
  cp $THEME_DIR/rofi/*.rasi $COMPILE_DIR 2>/dev/null
fi
