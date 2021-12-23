#!/usr/bin/env bash

menu=$(echo -e " Practica\n Capturas\n Media" | dmenu -i -p "異 Lanzador: ")

case "$menu" in
    " Practica") alacritty -e lf /home/lucas/Dropbox/practica/ ;;
    " Capturas") alacritty -e lf /home/lucas/Dropbox/img/screen/ ;;
    " Media") alacritty -e lf /mnt/ ;;
esac
