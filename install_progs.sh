#!/bin/bash
# Some setups on top of xubuntu 18.04 LTS
# yes Y | sudo apt-get update
# yes Y | sudo apt-get upgrade

declare -a progs=('vim' 'gimp' 'keepassx' 'vlc' 'git' 'npm' 'yarn' 'nautilus' 'firefox' 'silversearcher-ag' 'rubocop' 'ruby' 'usb-creator-gtk' 'redis' 'mariadb-client*' 'mariadb-server*' 'tmux' 'cheese' 'gnome-disk-utility' 'neofetch' 'rvm' 'openjdk-8-jdk' 'zsh')

for program in "${progs[@]}"
do
  yes Y | sudo apt-get install "$program"
done

# Install Touchpad-Indicator
echo | sudo add-apt-repository -y ppa:atareao/atareao
sudo apt-get update
yes Y | sudo apt-get install touchpad-indicator

# Install Skype
wget https://go.skype.com/skypeforlinux-64.deb -O /tmp/skypeforlinux-64.deb
yes Y | sudo apt install /tmp/skypeforlinux-64.deb
rm /tmp/skypeforlinux-64.deb


