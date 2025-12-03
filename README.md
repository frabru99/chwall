# 🎨 chwall — Dynamic Wallpaper & Colorscheme Switcher for Hyprland

`chwall` is a lightweight script that lets you interactively pick a wallpaper and automatically update your Hyprland, Hyprlock, Waybar, and Wofi colorscheme using **pywal**. It is built around a simple goal: seamless, fast personalization for your Hyprland setup.

This repository also includes ready‑to‑use configuration examples for related applications so your full desktop environment updates consistently with every wallpaper change.

---

## ✨ Features

* **Interactive wallpaper picker** using `fzf` with image previews.
* **Automatic Hyprland & Hyprlock wallpaper switching** via config rewriting.
* **pywal integration** for colorscheme generation.
* **Waybar & Wofi themes** that can react to pywal-generated colors.
* **Modular configuration examples** to help you adapt the script to your own setup.

---

## 📁 Repository Structure

```
chwall/
├── chwall                      # Main script
└── .config
    ├── configs_examples        # Configuration templates and examples
    │   ├── waybar
    │   │   ├── config.jsonc
    │   │   ├── scripts
    │   │   │   ├── bluetooth.sh
    │   │   │   ├── btop.sh
    │   │   │   ├── chwall.sh
    │   │   │   ├── keymap.sh
    │   │   │   ├── mic.sh
    │   │   │   ├── mixer.sh
    │   │   │   ├── updates
    │   │   │   └── wifi.sh
    │   │   └── style.css
    │   └── wofi
    │       ├── config
    │       ├── style.css
    │       ├── style-wallpaper.css
    │       ├── style-waybar.css
    │       ├── wallpaper
    │       └── waybar
    └── hypr
        ├── hyprland.conf
        └── hyprlock.conf
```

---

## 🔧 How It Works

The script:

1. Searches your wallpaper directory (`~/.config/hyprWalls`) for image files.
2. Uses **fzf** with an inline preview (via `kitty icat`) to let you choose an image.
3. Rewrites the `$wall` variable inside your Hyprland and Hyprlock configs.
4. Once those files change, any pywal‑integrated configuration will automatically update its colorscheme.

---

## 📜 Script Overview

The core script performs:

* Image discovery (`find`)
* Selection menu (`fzf` with preview)
* Config rewriting (`sed`)
* Feedback to the user about the selected wallpaper

It is lightweight, with no unnecessary dependencies.

---

## 🛠️ Requirements

Make sure you have:

* Hyprland
* Hyprlock
* `fzf`
* `kitty` (for preview, or switch to `chafa`)
* `pywal`
* Any app you'd like to theme (Waybar, Wofi, etc.) configured to read pywal colors

---

## 📦 Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/yourname/chwall
   cd chwall
   ```

2. Make the script executable:

   ```bash
   chmod +x chwall
   ```

3. Optionally, move it into your `$PATH`:

   ```bash
   sudo mv chwall /usr/local/bin/
   ```

4. Ensure your Hyprland config contains a `$wall` variable, e.g.:

   ```ini
   $wall = ~/.config/hyprWalls/default.jpg
   ```

5. Configure pywal‑compatible themes (examples included in `.config/configs_examples`).

---

## 🎨 Using chwall

Run:

```bash
chwall
```

You will see a list of all wallpapers with a live preview. Pick one and your system updates instantly.

---

## 🧩 Optional: Integrating With Waybar & Wofi

Inside `.config/configs_examples` you will find:

* Waybar `style.css` and `config.jsonc` templates using pywal colors.
* Wofi themes (`style.css`, `style-wallpaper.css`, `style-waybar.css`).

Copy them to your actual config directories to enable colorscheme syncing:

```bash
cp -r .config/configs_examples/waybar ~/.config/waybar
cp -r .config/configs_examples/wofi ~/.config/wofi
```

---

## 📝 Customization

You can modify:

* wallpaper directory path
* image preview program
* supported image formats
* config file paths

Everything is inside the configuration header at the top of the `chwall` script.

---

## 🐛 Troubleshooting

* **No images found** → Make sure `~/.config/hyprWalls` exists or change the wallpaper dir.
* **fzf preview not showing** → Install `kitty` or switch the preview command to `chafa`.
* **Colorscheme not updating** → Check that pywal hooks are sourced by the theme (Waybar, Wofi, etc.).

