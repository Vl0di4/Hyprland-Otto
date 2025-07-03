#!/bin/bash

# Устанавливаем все программы
sudo pacman -S wayland xorg xorg-server xorg-xwayland hyprland xdg-desktop-portal-hyprland kitty neovim firefox pavucontrol pamixer nemo grim slurp swappy rofi rofi-calc rofi-emoji waybar mako dunst ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-firacode-nerd noto-fonts-emoji otf-font-awesome xarchiver hyprpicker btop calcurse telegram-desktop discord wlsunset geoclue2 python3 swayimg swaybg nodejs npm eza zsh fuse2 wl-clipboard mc udiskie vlc unzip flatpak --noconfirm

#Создание папки .config и .themes
mkdir -p ~/.config
mkdir -p ~/.themes

# Копируем конфигурационные файлы после установки ПО
cp -rf ~/Hyprland-Otto/Otto/bgimages ~/.config/
cp -rf ~/Hyprland-Otto/Otto/hypr ~/.config/
cp -rf ~/Hyprland-Otto/Otto/waybar ~/.config/
cp -rf ~/Hyprland-Otto/Otto/kitty ~/.config/
cp -rf ~/Hyprland-Otto/Otto/rofi ~/.config/
cp -rf ~/Hyprland-Otto/Otto/calcurse ~/.config/
cp -rf ~/Hyprland-Otto/Otto/gtk-3.0 ~/.config/
cp -rf ~/Hyprland-Otto/Otto/gtk-4.0 ~/.config/
cp -rf ~/Hyprland-Otto/Otto/swappy ~/.config/
cp -rf ~/Hyprland-Otto/Otto/neofetch ~/.config/
cp -rf ~/Hyprland-Otto/Otto/mako ~/.config/
cp -rf ~/Hyprland-Otto/Otto/dunst ~/.config/

# переносим настройки курсора
cp -rf ~/Hyprland-Otto/Otto/.icons ~/

#Hастройка фаерфокса
mkdir -p ~/.mozilla/firefox/n0eij4j3.default-release
cp -rf ~/Hyprland-Otto/Otto/firefox/profiles.ini ~/.mozilla/firefox/
cp -rf ~/Hyprland-Otto/Otto/firefox/user.js ~/.mozilla/firefox/n0eij4j3.default-release/
cp -rf ~/Hyprland-Otto/Otto/firefox/chrome ~/.mozilla/firefox/n0eij4j3.default-release/

#Добавление GTK темы
tar -xf ~/Hyprland-Otto/Otto/Otto-GTK.tar.gz
tar -xf ~/Hyprland-Otto/Otto/assets.tar.gz
cp -rf Otto-GTK ~/.themes/
cp -rf assets ~/.config/

#Установка yay и нужных программ + тема курсора
git clone https://aur.archlinux.org/yay.git ~/yay
cd ~/yay
makepkg -si
yay -S bibata-cursor-theme-bin

# Настраиваем права на выполнение
chmod +x ~/.config/rofi/network-manager.sh
chmod +x ~/.config/rofi/rofi-power-menu.sh
chmod +x ~/.config/hypr/show_layout_popup.sh
chmod +x ~/.config/hypr/hyprpicker.sh
chmod +x ~/.config/dunst/dunstrc
chmod +x ~/.config/dunst/changevolume
