: '
    01-Adana.sh, pre-install script for Arch Linux installer.
    Copyright (C) 2021  Erdem Harputlugil

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>. 
'
#!/usr/bin/env bash
#This script is pre-install script for Arch install, 01-Adana
#Mostly this installer is going to use whiptail as ui for more user friendly use


#Defining whiptail dimensions, 20 rows and 70 chars for small screens
r=20
c=70
#Welcome message and confirmation for installing process Adana
whiptail --msgbox --backtitle "Welcome" --title "Arch Automated Installer" "\\n\\nThis installer will install Arch Linux on your computer" "${r}" "${c}"
if (whiptail --title "Confirmation" --yesno "This script is going to install Arch Linux on your computer, are you sure to continiue?" 8 78); then
    01-Adana_01
else
    echo "User selected No, installation aborted"
fi
01-Adana_01()
{
    #Choosing keyboard layout
    whiptail --title "Keyboard Layout" --menu "Please choose your keyboard layout" 25 78 16 \
    "TODO: add keyboard layouts arch linux support"/
}
01-Adana_02()
{
    #Finding location via ifconfig.co to use best mirror possible
    loc=$(curl -4 ifconfig.co/country-iso)
    #Not to be way behind schedule ;)
    timedatectl set-ntp true
} | whiptail --gauge "Please wait while things are happening" 6 50 0
