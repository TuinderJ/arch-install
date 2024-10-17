# git
if [ ! -e /bin/git ]
then
  sudo pacman -S git
fi

# Clone this repo
cd ~
git clone https://github.com/TuinderJ/arch-install.git
cd arch-install

# NVIM

# TMUX
if [ ! -e /bin/tmux ]
then
  sudo pacman -S tmux
fi

if [ ! -e ~/.tmux.conf ]
then
  cp .dotfiles/.tmux.conf ~/.tmux.conf
fi

# Clean up this repo on the local machine
cd ..
rm -rf arch-install
