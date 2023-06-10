#!/bin/bash

option=$(echo "Lock|Logout|Sleep|Hibernate|Shutdown|Restart" | rofi -sep "|" -dmenu -i -p "Power Menu:")
case $option in
    Lock) swaylock -C $XDG_CONFIG_HOME/swaylock/config;;
    Logout) hyprctl dispatch exit 0;;
    Sleep) systemctl suspend && swaylock -C $XDG_CONFIG_HOME/swaylock/config;;
    Shutdown) systemctl poweroff;;
    Restart) systemctl reboot;;
    Hibernate) systemctl hibernate;;
esac
exit 0
