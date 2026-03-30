# Gwyn - an easy to use bspwm template

A lightweight and modular BSPWM setup inspired by the excellent work of [gh0stzk](https://github.com/gh0stzk/dotfiles).  
This project is intended for those who prefer a simpler, minimal configuration and modular structure.

---

## Dependencies

### Required

- sxhkd
- rofi
- polybar  
- slock  
- xsetroot  
- dunst  
- lxsession  

### Optional (Recommended)

- picom  
- [autowall](https://github.com/begbaj/autowall)  
- feh  
- flameshot  
- pamixer  
- xss-lock  

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

- [ ] Refactor and clean up existing code  
- [ ] Implement full modular structure  
- [ ] General improvements and optimizations
