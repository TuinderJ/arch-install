# TODO hyprland with gbar
# TODO find and replace in files. change in /etc/pacman.conf #Color -> Color. change in /etc/paru.conf #BottomUp -> BottomUp

if [ -f /etc/os-release ] && ! grep -q 'ID=arch' /etc/os-release; then
  echo "You are running this NOT on an arch based system. Make sure you're on the system you want to be on..."
  exit 1
fi

# Ask the user what he would like to setup.
package_list="git"
if ! [ -f /bin/nvim ]; then
  echo "Would you like to setup neovim? [Y/n]"
  read should_install_neovim
  if [ "$should_install_neovim" == "y" ] || [ "$should_install_neovim" == "Y" ] || [ "$should_install_neovim" == "" ]; then
    package_list="$package_list neovim"
  fi
fi

if ! [ -f /bin/tmux ]; then
  echo "Would you like to setup tmux? [Y/n]"
  read should_install_tmux
  if [ "$should_install_tmux" == "y" ] || [ "$should_install_tmux" == "Y" ] || [ "$should_install_tmux" == "" ]; then
    package_list="$package_list tmux"
  fi
fi

echo "Would you like to install fastfetch? [Y/n]"
read should_install_fastfetch
if [ "$should_install_fastfetch" == "y" ] || [ "$should_install_fastfetch" == "Y" ] || [ "$should_install_fastfetch" == "" ]; then
  package_list="$package_list fastfetch"
fi

# Install the packages the user asked for 
echo "Package list is $package_list"
sudo pacman -S $package_list

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
if [ ! -d ~/.config/nvim ] && [ "$should_install_neovim" == 1 ]; then
  cp .dotfiles/nvim ~/.config/
  cp .dotfiles/.vimrc ~/
fi

# TMUX config
if [ ! -e ~/.tmux.conf ] && [ "$should_install_tmux" == 1 ]; then
  cp .dotfiles/.tmux.conf ~/.tmux.conf
fi

# Clean up this repo on the local machine
cd ..
rm -rf arch-install
