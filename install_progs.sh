#!/bin/bash
# yes Y | sudo apt-get update
# yes Y | sudo apt-get upgrade


declare -a progs=('vim' 'gimp' 'keepass2' 'vlc' 'git' 'npm' 'yarn' 'nautilus' 'firefox' 'silversearcher-ag' 'rubocop' 'ruby' 'usb-creator-gtk' 'compiz' 'compizconfig-settings-manager' 'compiz-plugins' 'redis' 'mariadb-client*' 'mariadb-server*')

for program in "${progs[@]}"
do
  yes Y | sudo apt-get install "$program"
done

# Setup ubuntu-rvm # https://github.com/rvm/ubuntu_rvm
echo | sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
yes Y | sudo apt-get install rvm

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

# Manual steps
# Firefox: Addons - Privacy Badger, Facebook Container
# Firefox: Preferences > Privacy & Security - Send "Do Not Track" signal always, Don't save logins
# Firefox: Preferences > Search: Default search engine DuckDuckGo
# Connect with Firefox Account

