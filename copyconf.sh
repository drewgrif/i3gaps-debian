####
# This script is used to copy my config files over for use on reboot of installation.

cp -r .config/backgrounds/ ~/.config
cp -r .config/bumblebee-status/ ~/.config
cp -r .config/i3/ ~/.config
cp -r .config/neofetch/ ~/.config
cp -r .config/rofi/ ~/.config
cp -r .config/kitty ~/.config
chmod +x ~/.config/i3/autostart.sh
