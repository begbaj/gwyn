bright_up() {
  brightnessctl set +10% &
  echo "scale=2; $(brightnessctl g)/$(brightnessctl m)*100" | bc | xargs -I {} dunstify "Brightness {}"
}

bright_down() {
  brightnessctl set 10%- &
  echo "scale=2; $(brightnessctl g)/$(brightnessctl m)*100" | bc | xargs -I {} dunstify "Brightness {}"
}
