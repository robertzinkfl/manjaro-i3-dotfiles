#!/bin/bash
pacmd set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo+input:analog-stereo
autorandr --load DESK
sleep 2
$HOME/.config/polybar/launch.sh
