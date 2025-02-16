#!/bin/bash

options="Desligar\nReiniciar\nSuspender\nSair"
chosen=$(echo -e "$options" | rofi -dmenu -i -p "Power Menu")

case "$chosen" in
    "Desligar") shutdown now ;;
    "Reiniciar") reboot ;;
    "Suspender") systemctl suspend ;;
    "Sair") hyprctl dispatch exit ;;
esac
