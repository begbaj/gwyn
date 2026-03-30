cp battery-notify* $HOME/.config/systemd/user/
systemctl --user daemon-reload
systemctl --user enable --now battery-notify.timer
