# FTH OS - Ultimate Web Development Linux Distribution

## Description

A sophisticated Debian-based system with **Hyprland compositor** and comprehensive web development tools. Designed for developers who want a beautiful, modern, and fully-configured environment without the hassle of manual setup.

## ✨ Features

### 🎨 Modern Desktop Environment
- **Hyprland**: Ultra-modern Wayland compositor with stunning animations
- **Waybar**: Beautiful and functional status bar
- **Kitty**: GPU-accelerated terminal with ligatures support
- **Wofi**: Application launcher with modern design
- **Fish Shell + Starship**: Modern shell with intelligent autocomplete

### 🚀 Development Tools
- **Languages**: Node.js, Python, Go, Rust, PHP, Java
- **Editors**: VSCodium, Neovim with modern config
- **Version Control**: Git, Lazygit, Tig with Delta diff viewer
- **Containers**: Docker, Podman, Docker Compose
- **Databases**: PostgreSQL, Redis, SQLite
- **Modern CLI**: bat, exa, ripgrep, fd, btop, procs, duf

### 📱 Applications (via Flatpak)
- **Browsers**: Firefox, Chrome, Brave
- **Communication**: Discord, Telegram, Slack
- **Design**: GIMP, Inkscape, Blender, Krita
- **Productivity**: LibreOffice, Obsidian, Zotero, Bitwarden
- **Gaming**: Steam, Lutris, Minecraft Launcher

### 🎵 Multimedia & Gaming
- Full codec support (H.264, H.265, MP3, AAC)
- GameMode and MangoHud for gaming performance
- OBS Studio for streaming/recording
- Audio: PulseAudio with advanced controls

## Building

### Prerequisites
```sh
sudo apt install live-build
```

### Configuration
```sh
sudo lb config --bootappend-live "boot=live components live-config.no_kernel_upgrade=1"
```

### Build
```sh
sudo lb build
```

## 🎯 Quick Start Guide

After booting into FTH OS:

### Basic Usage
- **Super + Q**: Open terminal
- **Super + R**: Application launcher
- **Super + E**: File manager
- **Print**: Screenshot tool
- **Super + 1-9**: Switch workspaces

### Development Setup
1. Open terminal and run: `install-vscode-extensions.sh`
2. Your development directories are ready at `~/Development/`
3. Git is pre-configured with sensible defaults
4. Docker is ready to use

### Customization
- **Themes**: Use `lxappearance` for GTK themes
- **Waybar**: Edit `~/.config/waybar/config`
- **Hyprland**: Edit `~/.config/hypr/hyprland.conf`
- **Terminal**: Edit `~/.config/kitty/kitty.conf`

## 📁 Project Structure

```
Development/
├── web/          # Web projects (React, Vue, Angular, etc.)
├── mobile/       # Mobile apps (Flutter, React Native)
├── desktop/      # Desktop apps (Electron, Tauri)
├── scripts/      # Utility scripts
└── learning/     # Learning projects
```

## 🛠️ Advanced Features

### Shell Aliases
Modern alternatives are pre-configured:
- `cat` → `bat` (syntax highlighting)
- `ls` → `exa` (modern listing)
- `find` → `fd` (fast file finder)
- `ps` → `procs` (modern process viewer)
- `top` → `btop` (beautiful system monitor)

### Git Enhancement
- **Delta**: Beautiful diff viewer
- **Lazygit**: Terminal UI for Git
- Pre-configured with useful aliases

### Python Environment
- Poetry for dependency management
- Common libraries pre-installed
- Jupyter notebooks ready

### Node.js Setup
- NVM for version management
- npm, yarn, and pnpm available
- Common global packages

## Download

You can download the project to test here: https://drive.google.com/drive/folders/1c4iY9TYem4qHZoQfAdhJ5oGK2CMN1AmO?usp=drive_link

## 🤝 Contributing

Feel free to contribute by:
- Adding new development tools
- Improving Hyprland configurations
- Enhancing the visual design
- Adding documentation

## 📄 License

This project is open source and available under the MIT License.
