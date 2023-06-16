#!/usr/bin/env bash

#-----------------------------------------------
#-----------Time--------------------------------
#-----------------------------------------------
#
# Set local time zone
sudo ln -sf /usr/share/zoneinfo/Europe/Vilnius /etc/localtime
# Sync hw clock
sudo hwclock --systohc
# Set ntp
sudo timedatectl set-ntp true
# Restart system clock synch daemon
sudo systemctl restart systemd-timesyncd

# Configure locale
sudo sed --in-place=.bak -e 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' -e 's/#ru_RU.UTF-8 UTF-8/ru_RU.UTF-8 UTF-8/' /etc/locale.gen
sudo locale-gen
sudo echo "LANG=en_US.UTF-8" >/etc/locale.conf
