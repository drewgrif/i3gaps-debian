#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg 

# Meta-package  NEEDED
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
# sudo apt install -y amd-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar xfce4-settings ranger

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstool avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. terminator,kitty)
sudo apt install -y xfce4-terminal

# Python installed for bumblebee-status. Not using polybar.
sudo apt install -y python3-pip 

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups
sudo apt install -y bluez blueman

sudo systemctl enable bluetooth
sudo systemctl enable cups

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Desktop background browser/handler 
# feh -g 3440x1440 -d -S filename /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
# sudo apt install -y feh
sudo apt install -y nitrogen 

# Required packages for i3-gaps installation
sudo apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status libpam0g-dev libxcb-xkb-dev

# Packages needed i3-gaps after installation
sudo apt install -y dmenu sxhkd numlockx rofi dunst libnotify-bin picom xarchiver galculator flameshot geany simple-scan gvfs-backends

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
# sudo apt install -y micro
sudo apt install -y vim

# Install fonts
sudo apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Install i3 gaps
cd
cd Downloads
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install

# Install Ly Console Display Manager
cd 
cd Downloads
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
make
sudo make install
sudo systemctl enable ly

# Lightdm can be used instead of Ly (more common)
# comment out all ly console display if choosing lightdm
# sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm


# XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp

# Using bumblebee-status instead of polybar or i3status (installed for initial login)
# https://bumblebee-status.readthedocs.io/en/main/index.html
pip install --user bumblebee-status

# Package needed for bumblebee-status if using apt module - currently configured is i3gaps config file.
sudo apt install -y aptitude

# Install Nerd Fonts
../nerdfonts.sh

sudo apt autoremove

printf "\e[1;32mDone! you can now reboot.\e[0m\n"
