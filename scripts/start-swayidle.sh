#!/bin/bash
# Kill any existing swayidle instances
pkill swayidle

# Start swayidle
swayidle -w \
  timeout 300 'swaylock --config ~/.config/swaylock/config --screenshot --ignore-empty-password --daemonize --indicator-caps-lock --indicator --clock --timestr "󰥔 %I:%M %p" --datestr "󰃭 %d-%m-%Y" --show-failed-attempts --indicator-idle-visible' \
  timeout 600 'swaymsg "output * power off"' \
  resume 'swaymsg "output * power on"' \
  before-sleep 'swaylock --config ~/.config/swaylock/config --screenshot --ignore-empty-password --daemonize --indicator-caps-lock --indicator --clock --timestr "󰥔 %I:%M %p" --datestr "󰃭 %d-%m-%Y" --show-failed-attempts --indicator-idle-visible' \
  lock 'swaylock --config ~/.config/swaylock/config --screenshot --ignore-empty-password --daemonize --indicator-caps-lock --indicator --clock --timestr "󰥔 %I:%M %p" --datestr "󰃭 %d-%m-%Y" --show-failed-attempts --indicator-idle-visible' &

