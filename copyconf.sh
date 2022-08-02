####
# This script is used to copy my config files over for use on reboot of installation.

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
# https://bumblebee-status.readthedocs.io/en/main/index.html
pip install --user bumblebee-status

# Package needed for bumblebee-status if using apt module - currently configured is i3gaps config file.
sudo apt install -y aptitude

cd
cd i3gaps-debian

git clone https://github.com/MarioAvolio/Nvim-Dotfiles.git
mv Nvim-Dotfiles/ nvim/ # rename

git clone https://github.com/MarioAvolio/Redshift-dotfiles.git
cd Redshift-dotfiles
sudo chmod +x install.sh
./install.sh

cd ..

cp -r .config/nvim/ ~/.config
cp -r .config/backgrounds/ ~/.config
cp -r .config/bumblebee-status/ ~/.config
cp -r .config/i3/ ~/.config
cp -r .config/neofetch/ ~/.config
cp -r .config/rofi/ ~/.config
cp -r .config/kitty ~/.config
chmod +x ~/.config/i3/autostart.sh
