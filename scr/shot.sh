#!/usr/bin/env bash

out=/home/lucas/Desktop/img/screen/$(date +%s).png

dmenu=$(echo -e "  copiar\n  seleccionar\n pantallazo" | dmenu -i -p " Captura de Pantalla: ")

case "$dmenu" in
    "  copiar") maim -su | xclip -selection clipboard -t image/png ;;
    "  seleccionar") maim -su | tee $out | xclip -selection clipboard -t image/png ;;
    " pantallazo") maim $out ;;

esac
