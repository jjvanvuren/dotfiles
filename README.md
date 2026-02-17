# dotfiles
Arch Linux with Hyprland and i3. Managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup
```sh
cd ~/.dotfiles
stow . --target=$HOME
```

## Packages
Add the [Chaotic-AUR](https://aur.chaotic.cx/docs) and then:
```sh
sudo pacman -S --needed --noconfirm - < ~/.dotfiles/pkglist.txt
paru -S --needed --noconfirm - < ~/.dotfiles/aurpkglist.txt
```

## What's Included
| Config | Description |
|---|---|
| hypr | Hyprland, hyprlock, hyprpaper |
| waybar | Status bar (Hyprland) |
| wofi | App launcher (Hyprland) |
| i3 | i3 window manager |
| polybar | Status bar (i3) |
| picom | Compositor (i3) |
| rofi | App launcher (i3) |
| kitty | Terminal |
| starship | Shell prompt |
| bat | Cat replacement |
| btop / htop | System monitors |
| dunst | Notifications |
| betterlockscreen | Lock screen (i3) |
| gtk-3.0 / gtk-4.0 | GTK theme settings |
| xsettingsd | X settings daemon |
| backgrounds | Wallpapers |

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

## Bluetooth
- Enable `bluetooth.service`
- Manage devices with `bluetui`

## Screen Locking
- Run `betterlockscreen -u "/path/to/img.jpg"`
- See [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) for more info.

## Multiple Displays (i3)
To easily manage multiple displays see:
https://linuxconfig.org/how-to-automatically-change-x11-displays-setup-with-autorandr-on-linux

## SDDM Theme
- Config location: `/usr/lib/sddm/sddm.conf.d/default.conf`
- See [catppuccin/sddm](https://github.com/catppuccin/sddm) for install.

## Qt Themes
Add the following to `/etc/environment` to use `kvantum` to manage Qt themes:
```sh
export QT_STYLE_OVERRIDE=kvantum
```
