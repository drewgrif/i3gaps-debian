# i3gaps
# Works great with Debian Stable
I wanted to install i3 gaps on debian stable.
My recommendation is to install debian stable minimal (no gui).
I used the expert method and the only thing in my:

/etc/apt/sources.list 

deb ftp://us.debian.org/debian/ testing main non-free contrib

After sudo apt update && sudo apt upgrade (takes a while)

sudo apt install git

git clone https://github.com/drewgrif/i3gaps-sid

cd i3gaps-sid

chmod +x install.sh nerdfonts.sh
./install.sh
reboot
log in using ly log in manager.

https://youtu.be/_7p0ExspBmA.  Out of date but still ok.
