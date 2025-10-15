#!/usr/bin/env bash
if ! [[ -d $HOME/GitHub/mine/config/niri-configs ]]; then
	pushd $HOME/GitHub/mine/config
	git clone https://github.com/fusion809/niri-configs
	popd
fi
if ! [[ -d $HOME/GitHub/mine/config/hyprland-configs ]]; then
	pushd $HOME/GitHub/mine/config
	git clone https://github.com/fusion809/hyprland-configs
	popd
fi
pushd $HOME/GitHub/mine/config/niri-configs
if ! [[ -d $HOME/.local/bin ]]; then
	mkdir -p $HOME/.local/bin
fi
ln -sf $PWD/../hyprland-configs/bluetooth-connect ~/.local/bin/
ln -sf $PWD/wallpaper ~/.local/bin/
if ! [[ -d $HOME/.config/waybar ]]; then
	mkdir -p $HOME/.config/waybar
fi
ln -sf $PWD/../hyprland-configs/arch_menu.xml ~/.config/waybar/
ln -sf $PWD/../hyprland-configs/power_menu.xml ~/.config/waybar/
ln -sf $PWD/config.jsonc ~/.config/waybar/
ln -sf $PWD/../hyprland-configs/style.css ~/.config/waybar/
if ! [[ -d $HOME/.config/hypr ]]; then
	mkdir -p $HOME/.config/hypr
fi
ln -sf $PWD/ ~/.config/hypr/
if ! [[ -d $HOME/.config/kitty ]]; then
	mkdir -p $HOME/.config/kitty
fi
ln -sf $PWD/../hyprland-configs/kitty.conf ~/.config/kitty/
if ! [[ -d $HOME/.config/alacritty ]]; then
	mkdir -p $HOME/.config/alacritty
fi
ln -sf $PWD/../hyprland-configs/alacritty.conf ~/.config/alacritty/
popd
yay -S alacritty kitty swaybg waybar bluetoothctl nautilus google-chrome steam rofi niri gvim-gtk2 wttrbar --noconfirm --needed
