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
#This script is pre-install script for Arch install, Adana-01
#Mostly this installer is going to use whiptail as ui for more user friendly use


#Defining whiptail dimensions, 20 rows and 70 chars for even smaller scrrens
r=20
c=70
#Welcome message
whiptail --msgbox --backtitle "Welcome" --title "Arch Automated Installer" "\\n\\nThis installer will install Arch Linux on your device" "${r}" "${c}"
