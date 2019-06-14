
#!/bin/bash
# XPS: Startup script to disable touchpad when typing
#
# For some reason my XPS Ubuntu has two active touchpad drivers, 
# which makes disable/enable toggling unreliable.
#
# This script fixes the issue, by disabling the other driver,
# and then launching touchpad indicator.
#
# I'm running the script from xfce4 
# Session and Startup > Application Autostart with command
# /bin/bash /full/path/to/script

SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
declare -i ID
ID=`xinput list | grep -Eo 'Synaptics TouchPad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'`
xinput set-prop $ID "Device Enabled" 0
touchpad-indicator &

