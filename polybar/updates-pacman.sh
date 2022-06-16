#!/bin/sh

if ! updates=$(checkupdates 2> /dev/null | wc -l); then
	updates=0
fi

if [ "$updates" -gt 0 ]; then
	echo "%{F#16A085}%{F-} $updates"
else
	echo "%{F#16A085}%{F-} $updates"
fi
