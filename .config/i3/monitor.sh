#!/bin/bash -e

main_screen_id=$(xrandr |grep "connected primary" | cut -d\  -f1)
second_screen_id=$(xrandr |grep -w "connected" | grep -v "connected primary" | cut -d\  -f1)
rotate=${1:-left}


if [[ "$second_screen_id" == "" ]]
then
	i3-msg '[workspace=".*"]' move workspace to output ${main_screen_id}
else
	xrandr --auto && xrandr --output ${second_screen_id} --right-of ${main_screen_id} --rotate ${rotate}
	i3-msg '[workspace="1|"]' move workspace to output ${second_screen_id}
	i3-msg '[workspace="2|"]' move workspace to output ${main_screen_id}
	i3-msg '[workspace="3|"]' move workspace to output ${main_screen_id}
	i3-msg '[workspace="4|"]' move workspace to output ${main_screen_id}
fi
