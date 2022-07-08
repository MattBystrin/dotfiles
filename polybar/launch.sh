#!/bin/bash

#polybar
killall -q polybar

# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Polybar ~/.config/polybar/config
polybar left &
polybar right &

echo "Polybar loaded"
