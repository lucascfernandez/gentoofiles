#!/usr/bin/env bash

menu=$(echo -e "Practica\nCapturas\nMedia\nlluvia\nSetkeyboard\nHexcolor\nParlantes on\nParlantes off" | dmenu -l 10 -i -p "Lanzador: ")

case "$menu" in
    "Practica") st -e lf /home/lucas/Dropbox/practica/ ;;
    "Capturas") st -e lf /home/lucas/Dropbox/img/screen/ ;;
    "Media") st -e lf /mnt/ ;;
    "lluvia") mpv /mnt/estudiar/lluvia.mp4 ;;
    "Setkeyboard") xset r rate 300 50 & setxkbmap -layout us -variant intl & ;;
    "Hexcolor") xcolor | tr -d '\n' | xclip -selection clipboard ;;
    "Parlantes on") bluetoothctl connect C4:30:18:6F:46:F8 ;;
    "Parlantes off") bluetoothctl disconnect C4:30:18:6F:46:F8 ;;    
esac



