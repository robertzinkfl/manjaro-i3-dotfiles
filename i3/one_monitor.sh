#!/bin/bash
pacmd set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo
autorandr --load LAPTOP
sleep 1
$HOME/.config/polybar/launch.sh
