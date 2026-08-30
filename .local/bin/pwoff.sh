#!/usr/bin/env bash
op=$(echo -e "Lock\nLogout\nReboot\nPoweroff" | rofi -dmenu -i -p "Power")

case "$op" in
    "Lock")      swaylock ;;
    "Logout")    swaymsg exit ;;
    "Reboot")    systemctl reboot ;;
    "Poweroff")  systemctl poweroff ;;
esac
