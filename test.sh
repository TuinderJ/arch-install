# Ask the user what he would like to setup.
package_list="git"
if ! [ -e /bin/mkdir ]; then
  echo "Would you like to setup neovim? [Y/n]"
  read should_install_neovim
  if [ "$should_install_neovim" == "y" ] || [ "$should_install_neovim" == "Y" ] || [ "$should_install_neovim" == "" ]; then
    package_list="$package_list neovim"
  fi
fi

echo $package_list
