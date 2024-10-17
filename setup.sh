sudo pacman -S git neovim tmux

# Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# Clone this repo
cd ~
git clone https://github.com/TuinderJ/arch-install.git
cd arch-install

# NVIM config
if [ ! -d ~/.config/nvim ]; then
  cp .dotfiles/nvim ~/.config/nvim
fi

# TMUX config
if [ ! -e ~/.tmux.conf ]; then
  cp .dotfiles/.tmux.conf ~/.tmux.conf
fi

# Clean up this repo on the local machine
cd ..
rm -rf arch-install
