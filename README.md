# dotfiles
A minimal Arch Linux install with [Hyprland](https://hyprland.org).

## Required Packages
### NOTE!
- Install `kitty` before installing `hyprland`.
- Install `paru` with the following to access AUR:
```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```
### Pacman
```
base-devel brightnessctl fastfetch fd file-roller fzf git htop hyprland hyprlock hyprpaper hyprpicker imv kitty lazygit less luarocks mpv networkmanager noto-fonts noto-fonts-emoji npm nwg-look openssh papirus-icon-theme ripgrep starship stow swaync thunar tree tree-sitter-cli ttf-font-awesome ttf-jetbrains-mono-nerd vim waybar wget wofi xclip yazi zsh
```
### AUR
```
brave-bin catppuccin-gtk-theme-macchiato hyprshot neovim-git pwvucontrol rose-pine-cursor rose-pine-hyprcursor sddm-git
```
## SDDM Theme
- Config location: `/usr/lib/sddm/sddm.conf.d/default.conf`
- See [catppuccin/sddm](https://github.com/catppuccin/sddm) for install. 
