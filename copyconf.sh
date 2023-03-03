####
# This script is used to copy my config files over for use on reboot of installation.

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
# https://bumblebee-status.readthedocs.io/en/main/index.html
pip install --user bumblebee-status

# Package needed for bumblebee-status if using apt module - currently configured is i3gaps config file.
sudo apt install -y aptitude

cd
cd i3gaps-debian

cp -r .config/backgrounds/ ~/.config
cp -r .config/bumblebee-status/ ~/.config
cp -r .config/i3/ ~/.config
cp -r .config/dunst/ ~/.config
cp -r .config/kitty/ ~/.config
cp -r .config/rofi/ ~/.config
chmod +x ~/.config/i3/autostart.sh
