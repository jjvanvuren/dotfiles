# dotfiles
A minimal Arch Linux install with i3.

## Packages
### AUR
- Install `paru`:
```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### Install
```sh
sudo pacman -S --needed --noconfirm - < ~/dotfiles/pkglist.txt
paru -S --needed --noconfirm - < ~/dotfiles/aurpkglist.txt
```
## Python Global Environment
```sh
mkdir -p ~/.venvs
python -m venv ~/.venvs/global
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

## Bluetooth
- Enable `bluetooth.service`
- Manage devices with `bluetui`

## Screen Locking
- Run `betterlockscreen -u "/path/to/img.jpg"`
- See [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen) for more info.

## Multiple Displays
To easily manage multiple displays see:  
https://linuxconfig.org/how-to-automatically-change-x11-displays-setup-with-autorandr-on-linux

## SDDM Theme
- Config location: `/usr/lib/sddm/sddm.conf.d/default.conf`
- See [catppuccin/sddm](https://github.com/catppuccin/sddm) for install. 
