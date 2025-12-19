#!/bin/bash
# Kill any existing swayidle instances
pkill swayidle

# Start swayidle
swayidle -w \
  timeout 300 '~/.config/swaylock/lock.sh' \
  timeout 600 'swaymsg "output * power off"' \
  resume 'swaymsg "output * power on"' \
  before-sleep '~/.config/swaylock/lock.sh' \
  lock '~/.config/swaylock/lock.sh' &

