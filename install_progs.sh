#!/bin/bash
# Some setups on top of xubuntu 18.04 LTS
# yes Y | sudo apt-get update
# yes Y | sudo apt-get upgrade

declare -a progs=('vim' 'gimp' 'keepassx' 'vlc' 'git' 'npm' 'yarn' 'nautilus' 'firefox' 'silversearcher-ag' 'rubocop' 'ruby' 'usb-creator-gtk' 'redis' 'mariadb-client*' 'mariadb-server*' 'tmux' 'cheese' 'gnome-disk-utility' 'neofetch')

for program in "${progs[@]}"
do
  yes Y | sudo apt-get install "$program"
done

# Setup ubuntu-rvm # https://github.com/rvm/ubuntu_rvm
echo | sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
yes Y | sudo apt-get install rvm

# Install Skype
wget https://go.skype.com/skypeforlinux-64.deb -O /tmp/skypeforlinux-64.deb
yes Y | sudo apt install /tmp/skypeforlinux-64.deb
rm /tmp/skypeforlinux-64.deb

# Setup java 8 - this might not behave very nicely at all as a script
# as the installer requires manual steps
# echo | sudo add-apt-repository ppa:webupd8team/java
# sudo apt-get update
# yes Y | sudo apt-get install oracle-java8-installer
# yes Y | sudo apt-get install oracle-java8-set-default
# cat >> /etc/environment <<EOL
# JAVA_HOME=/usr/lib/jvm/java-8-oracle
# JRE_HOME=/usr/lib/jvm/java-8-oracle/jre
# EOL

### Manual steps
## Firefox
# Firefox: Addons - Privacy Badger, Facebook Container
# Firefox: Preferences > Privacy & Security - Send "Do Not Track" signal always, Don't save logins
# Firefox: Preferences > Search: Default search engine DuckDuckGo
# Connect with Firefox Account

## Skype
# Dark theme

## Keyboard > Application Shortcuts
# vlc   - Super+V
# skype - Super+S
# xfce4-notes - Super+N

## Window Manager > Keyboard
# Move window to upper (etc) workspace - Shift+Ctrl+Alt+Arrow
# Tile window to the top left (etc)    - Super+Alt+Arrow

## Panel > Items
# Window Menu plugin

# TODO
#  - Add Put to viewport bindings, perhaps with compiz
#  - Separate manual steps from actual scripts
#  - See if bindings could be stored to repo
