# dotfiles
A minimal Arch Linux install with i3.

## Required Packages
### NOTE!
- Install `paru` with the following to access AUR:
```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### Pacman
```
arandr autorandr base-devel bluez bluez-utils discord brightnessctl dunst fastfetch flameshot fd file-roller feh fzf git htop impala iwd kitty lazygit less luarocks mpv noto-fonts noto-fonts-emoji npm nwg-look openssh papirus-icon-theme pavucontrol picom polybar ripgrep ristretto rofi sddm starship stow thunar tree tree-sitter-cli ttf-font-awesome ttf-jetbrains-mono-nerd udisks2 udiskie vim wget xclip yazi zsh
```
### AUR
```
bluetui-bin brave-bin catppuccin-gtk-theme-macchiato neovim-git teams-for-linux-bin 
```
## Wi-Fi
- Create `/etc/iwd/main.conf` with the following:
```
[General]
EnableNetworkConfiguration=true

[Network]
NameResolvingService=systemd
```
- Enable `iwd.service` & `systemd-resolved.service`.
- Use `iwctl` or `impala` to connect to Wi-Fi.

# Bluetooth
- Enable `bluetooth.service`
- Manage devices with `bluetui`

## Multiple Displays
To easily manage multiple displays see:  
https://linuxconfig.org/how-to-automatically-change-x11-displays-setup-with-autorandr-on-linux

## SDDM Theme
- Config location: `/usr/lib/sddm/sddm.conf.d/default.conf`
- See [catppuccin/sddm](https://github.com/catppuccin/sddm) for install. 
