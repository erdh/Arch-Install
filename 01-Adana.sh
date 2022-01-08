#!/usr/bin/env bash
#This script is pre-install script for Arch install, Adana-01
#Mostly this installer is going to use whiptail as ui for more user friendly use


#Defining whiptail dimensions, 20 rows and 70 chars for even smaller scrrens
r=20
c=70
#Welcome message
whiptail --msgbox --backtitle "Welcome" --title "Arch Automated Installer" "\\n\\nThis installer will install Arch Linux on your device" "${r}" "${c}"
