# How to test

While developing this template, I had the urge to have something that can break and tell me why without needing to switch tty
or waiting for my PC to give me a response.

Here is what you can do:

```bash
Xephyr -br -ac -noreset -screen 1280x720 :2 &
DISPLAY=:2 bspwm > "$HOME/path/to/log/" 2>&1
```

This creates a new window running a nested Xorg server where you can run every X application you want.
You can then test your bspwm configuration and if it breaks, check the log and you will know why.

Also, I've tested this setup under wayland, and it works just fine if you have xwayland installed.

## Todo

Implement a script to do just that without writing every time the commands
