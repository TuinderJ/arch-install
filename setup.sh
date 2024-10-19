# TODO hyprland with gbar
# TODO find and replace in files. change in /etc/pacman.conf #Color -> Color. change in /etc/paru.conf #BottomUp -> BottomUp

if [ -f /etc/os-release ] && ! grep -q 'ID=arch' /etc/os-release; then
  echo "You are running this NOT on an arch based system. Make sure you're on the system you want to be on..."
  exit 1
fi

cd ~/arch-install/
# ============================================================
# ============================================================
# Configs
# ============================================================
# ============================================================

# Hyprland
cp .dotfiles/hyprland.conf ~/.config/hypr/hyprland.conf

# SDDM
sudo cp .dotfiles/sddm.conf /etc/sddm.conf

# NVIM
cp -r .dotfiles/nvim ~/.config/
cp .dotfiles/.vimrc ~/

# TMUX
cp .dotfiles/.tmux.conf ~/.tmux.conf

# ============================================================
# ============================================================
#
# ============================================================
# ============================================================
# Clean up this repo on the local machine
# cd ..
# rm -rf arch-install
