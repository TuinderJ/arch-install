sudo pacman -S git neovim tmux

# Clone this repo
cd ~
git clone https://github.com/TuinderJ/arch-install.git
cd arch-install

# NVIM config
if [ ! -d ~/.config/nvim ]; then
  echo "neovim config does not exist"
fi

# TMUX config
if [ ! -e ~/.tmux.conf ]; then
  cp .dotfiles/.tmux.conf ~/.tmux.conf
fi

# Clean up this repo on the local machine
cd ..
rm -rf arch-install
