#!/usr/bin/env bash

menu=$(echo -e "Practica\nCapturas\nMedia\nlluvia\nSetkeyboard\nHexcolor" | dmenu -i -p "Lanzador: ")

case "$menu" in
    "Practica") alacritty -e lf /home/lucas/Dropbox/practica/ ;;
    "Capturas") alacritty -e lf /home/lucas/Dropbox/img/screen/ ;;
    "Media") alacritty -e lf /mnt/ ;;
    "lluvia") mpv /mnt/estudiar/lluvia.mp4 ;;
    "Setkeyboard") xset r rate 300 50 & setxkbmap -layout us -variant intl & ;;
    "Hexcolor") xcolor | tr -d '\n' | xclip -selection clipboard ;;
esac
