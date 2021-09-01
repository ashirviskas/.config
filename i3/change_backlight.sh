#!/bin/bash
CURRENT_B=$(cat "/sys/class/backlight/nv_backlight/brightness")
increase()
{
	echo $CURRENT_B
	echo $S1
	NEW_B=$(expr $CURRENT_B + $1)
	echo $NEW_B
	echo $NEW_B | sudo tee /sys/class/backlight/nv_backlight/brightness
}

"$@"
