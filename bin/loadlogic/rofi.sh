#!/usr/bin/env bash

load_rofi() {
  # Rofi launchers
  cat >"$HOME"/.config/bspwm/config/rofi-themes/shared.rasi <<-EOF
	* {
	    font: "${rofi_font}";
	    background: ${rofi_background};
	    bg-alt: ${rofi_bg_alt};
	    background-alt: ${rofi_background_alt};
	    foreground: ${rofi_fg};
	    selected: ${rofi_selected};
	    active: ${rofi_active};
	    urgent: ${rofi_urgent};

	    img-background: url("~/.config/bspwm/rices/${RICE}/rofi.webp", width);
	}
	EOF
}
