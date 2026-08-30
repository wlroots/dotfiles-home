#!/usr/bin/env bash
op=$(echo -e "Lock\nLogout\nReboot\nPoweroff" | fuzzel -d --prompt="Power> " -l 4 -w 50)

case "$op" in
    "Lock")      swaylock ;;
    "Logout")    swaymsg exit ;;
    "Reboot")    systemctl reboot ;;
    "Poweroff")  systemctl poweroff ;;
esac
