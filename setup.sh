# git
if [ -e /bin/git ]
then
  echo "git is installed"
else
  sudo pacman -S git
fi

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
  curl -fsSL https://github.com/TuinderJ/arch-install/raw/refs/heads/main/.dotfiles/tmux.conf -o ~/.tmux.conf
fi
