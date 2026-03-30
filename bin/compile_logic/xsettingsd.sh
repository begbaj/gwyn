sed -i $X_CONFIG \
  -e "s|Net/ThemeName .*|Net/ThemeName \"$gtk_theme\"|" \
  -e "s|Net/IconThemeName .*|Net/IconThemeName \"$gtk_icons\"|" \
  -e "s|Gtk/CursorThemeName .*|Gtk/CursorThemeName \"$gtk_cursor\"|"
sed -i -e "s/Inherits=.*/Inherits=$gtk_cursor/" "$HOME"/.icons/default/index.theme

pidof -q xsettingsd && killall -HUP xsettingsd
xsetroot -cursor_name left_ptr
