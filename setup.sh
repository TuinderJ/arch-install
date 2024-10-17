# git
if [ -e /bin/git ]
then
  echo "git is installed"
else
  sudo pacman -S git
fi

# Clone this repo
cd ~
git clone https://github.com/TuinderJ/arch-install.git
cd arch-install

# TMUX
if [ -e /bin/tmux ]
then
  echo "TMux is installed"
else
  sudo pacman -S tmux
fi

if [ -e ~/.tmux.conf ]
then
  echo "TMux config file exists"
else
  echo "TMux config does not exist"
fi

# Clean up this repo on the local machine
cd ..
rm -rf arch-install
