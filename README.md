# chwall 🎨

**chwall** (Change Wall) is a lightweight, interactive Bash script for **Hyprland** that streamlines wallpaper management. It combines the speed of `fzf` with the visual fidelity of `kitty` to allow you to browse, preview, and set wallpapers on the fly.

It is designed to work as the "trigger" for a cohesive theming system—updating your Hyprland and Hyprlock configurations instantly, which (with the included config examples) cascades into color updates for Waybar, Wofi, and more.

## ✨ Features

* **Interactive Selection:** Uses `fzf` to browse your wallpaper directory with keyboard navigation.
* **High-Res Previews:** leveraging the Kitty Image Protocol (or `chafa`) to show image previews directly in the terminal sidebar.
* **Config Injection:** Automatically searches for and replaces wallpaper variables in `hyprland.conf` and `hyprlock.conf` using `sed`.
* **Theme Ready:** Organized to work alongside `pywal` or other color-extraction tools to update your entire desktop environment's palette upon selection.

---

## 📂 Repository Structure

This repository includes the script itself and example configurations to ensure your system reacts to the wallpaper change.

```text
chwall/
├── chwall                  # The main executable script
└── .config
    ├── configs_examples
    │   ├── waybar          # Waybar configs with dynamic color support
    │   │   ├── config.jsonc
    │   │   ├── scripts
    │   │   └── style.css
    │   └── wofi            # Wofi launcher styling
    │       ├── config
    │       ├── style.css
    │       ├── style-wallpaper.css
    │       └── ...
    └── hypr
        ├── hyprland.conf   # Reference Hyprland config
        └── hyprlock.conf   # Reference Hyprlock config