# i3gaps
# Works great with Debian Stable
I wanted to install i3 gaps on debian stable.
My recommendation is to install debian stable minimal (no gui).
I used the expert method.

```
sudo apt install git

git clone https://github.com/drewgrif/i3gaps-debian

cd i3gaps-debian

./install.sh
```

OPTIONAL:
Nerd Fonts installed by default but can be commented out of install.sh
```
# source ~/i3gaps-debian/nerdfonts.sh
```
OPTIONAL:
Customized configuration installed by default but can be commented out of install.sh
```
# source ~/i3gaps-debian/copyconfdfonts.sh
```
NOT OPTIONAL
```
sudo reboot
```


https://youtu.be/_7p0ExspBmA.  Out of date.

## This is the look after using: install.sh, nerdfonts.sh, and copyconf.sh

![Debian with i3gaps](https://raw.githubusercontent.com/drewgrif/blog/main/2022-05-18_17-54.png)
