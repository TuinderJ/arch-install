# Ask the user what he would like to setup.
package_list="git"
echo "Would you like to setup neovim? [Y/n]"
read should_install_neovim
if [ "$should_install_neovim" == "y" ] || [ "$should_install_neovim" == "Y" ] || [ "$should_install_neovim" == "" ]; then
  package_list="$package_list neovim"
fi

echo "Would you like to setup tmux? [Y/n]"
read should_install_tmux
if [ "$should_install_tmux" == "y" ] || [ "$should_install_tmux" == "Y" ] || [ "$should_install_tmux" == "" ]; then
  package_list="$package_list tmux"
fi

echo "Would you like to install fastfetch? [Y/n]"
read should_install_fastfetch
if [ "$should_install_fastfetch" == "y" ] || [ "$should_install_fastfetch" == "Y" ] || [ "$should_install_fastfetch" == "" ]; then
  package_list="$package_list fastfetch"
fi

# Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

# Install the packages the user asked for 
sudo paru -S $package_list

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
