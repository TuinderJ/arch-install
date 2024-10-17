if [ -e /bin/tmux ]
then
  echo "TMux is installed"
else
  echo "TMux is not installed"
fi

if [ -e ~/.tmux.conf ]
then
  echo "TMux config file exists"
else
  echo "TMux config file does not exist"
fi
