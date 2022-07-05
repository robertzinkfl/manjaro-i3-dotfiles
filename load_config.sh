#!/bin/bash
pwd=$(pwd)
echo "Working directory is: $pwd"
echo ''
echo "Making directories..."
rm -r $HOME/.i3
rm -r $HOME/.config/polybar
mkdir $HOME/.i3
mkdir $HOME/.config/polybar
echo "Making symbolic links..."
echo "Loading i3 config..."
ln -sf $pwd/i3/config $HOME/.i3/
ln -sf $pwd/i3/one_monitor.sh $HOME/.i3/
ln -sf $pwd/i3/two_monitors.sh $HOME/.i3/

echo "Loading polybar config..."
ln -sf $pwd/polybar/config.ini $HOME/.config/polybar/
ln -sf $pwd/polybar/launch.sh $HOME/.config/polybar/
ln -sf $pwd/polybar/updates-pacman.sh $HOME/.config/polybar/

echo "Loading autorandr config..."
rm -r $HOME/.config/autorandr
ln -sf $pwd/autorandr $HOME/.config/

echo "Loading zshrc..."
ln -sf $pwd/.zshrc $HOME
echo "Loading alacritty config..."
ln -sf $pwd/.alacritty.yml $HOME

echo ''
echo "Done!"
