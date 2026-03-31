# Gwyn - an easy to use bspwm template

A lightweight and modular BSPWM setup inspired by the excellent work of [gh0stzk](https://github.com/gh0stzk/dotfiles).  
This project is intended for those who prefer a simpler, minimal configuration and modular structure.

## BEFORE YOU COMPLAIN

This is something i'm sharing because I like to share what I do, but is also a totally personal project, which means that there is no insane testing on this code and there may be several bugs or not-so-clean code. I don't dedicate much time to this project so it may never be completed. If you have any suggestion or want to contribute, you're welcome to share!

---

## Dependencies

## Required

 sxhkd
 rofi
 polybar  
 slock  
 xsetroot  
 dunst  
 lxsession  
 picom  
 [autowall](https://github.com/begbaj/autowall)  
 feh  
 flameshot  
 pamixer  
 xss-lock  

> Note: some of this are acyually not strictly required since it is easy to remove the dependency by configuring the environment to not to use some of the tools. I've put them as required since I did not already prepare a "minimal" setup where only a few packages are actually required (like sxhkd, which you already have, polybar, rofi, picom etc.)

# Installation

Install required packages. On Arch-based distros, it should be enough to run this:

```bash
sudo pacman -S sxhkd rofi polybar picom autowall feh dunst flameshot lxsession pamixer slock xss-lock xsetroot wmname
```

Then, just run this:

```bash
cd .config/
mv bspwm/ bspwm.bak/ # only if you already have a bspwm configuration
git clone https://github.com/begbaj/gwyn.git
mv gwyn/ bspwm/
```

and then run bspwm.

---

## Structure

**Note:** This structure is not yet implemented.

The BSPWM configuration folder will follow this layout:

```txt
BSPWM/
  ├── bin/
  │   ├── loader.sh                  # Theme loader
  │   └── loadlogic/                 # Logic modules defining how components are applied
  │       └── <function-component>.sh
  │
  ├── globals/                       # Shared configurations (fonts, colors, constants)
  │   └── <component-global>.sh
  │
  ├── themes/                        # Individual theme definitions
  │   ├── .build/                    # Builded configurations currently used by current theme
  │   └── <theme-name>/
  │       ├── config.sh              # Core theme configuration (colors, wallpaper, etc.)
  │       ├── dunst/                 # Component-specific configs
  │       ├── polybar/
  │       └── rofi/
  │
  └── bspwmrc                        # Main BSPWM configuration entry point
```

### Example theme structure

```txt
islands/
  ├── config.sh
  ├── dunst/
  ├── polybar/
  ├── bspwm/
  └── rofi/

```

# Notice

Commit messages may sometimes be uninformative. Development moves quickly, and detailed commit messages are not always the focus at this stage.

---

### Todo

- [X] Refactor and clean up existing code  
- [-] Implement full modular structure  
- [-] General improvements and optimizations
