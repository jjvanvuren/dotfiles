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
arandr autorandr base-devel discord brightnessctl dunst fastfetch flameshot fd file-roller feh fzf git htop kitty lazygit less luarocks mpv networkmanager noto-fonts noto-fonts-emoji npm nwg-look openssh papirus-icon-theme pavucontrol picom polybar ripgrep ristretto rofi sddm starship stow thunar tree tree-sitter-cli ttf-font-awesome ttf-jetbrains-mono-nerd vim wget xclip yazi zsh
```
### AUR
```
brave-bin catppuccin-gtk-theme-macchiato neovim-git teams-for-linux-bin
```
## Multiple Displays
To easily manage multiple displays see:  
https://linuxconfig.org/how-to-automatically-change-x11-displays-setup-with-autorandr-on-linux

## SDDM Theme
- Config location: `/usr/lib/sddm/sddm.conf.d/default.conf`
- See [catppuccin/sddm](https://github.com/catppuccin/sddm) for install. 
