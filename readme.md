# Arch Setup

```
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru
```

```
sudo pacman -Syu
paru -S gbar nerd-fonts brave discord lutris \
chili-sddm-theme btop bolt-launcher neovim \
tmux steam samba fastfetch btop xclip hyprshot \
xdg-desktop-portal-hyprland
```

```
git clone https://github.com/TuinderJ/arch-install.git
cd arch-install
setup.sh
```
