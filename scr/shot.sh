#!/usr/bin/env bash
#
#
# Lucas Fernandez
#
# Menu para sacar screenshots.

out=/home/lucas/Desktop/img/screen/$(date +%s).png

menu=$(echo -e "  copiar\n copia + img" | dmenu -i -p " Captura de Pantalla: ")

case "$menu" in
    "  copiar") copia=$(echo -e "  seleccionar\n pantallazo" | dmenu -i -p " Qué quieres copiar? ") ;;
    " copia + img") copiaimg=$(echo -e "  seleccionar\n pantallazo" | dmenu -i -p " Copia + Imagen: ") ;;
esac

case "$copia" in
    "  seleccionar") maim -su | xclip -selection clipboard -t image/png ;;
    " pantallazo") maim | xclip -selection clipboard -t image/png ;;
esac

case "$copiaimg" in
    "  seleccionar") maim -su | tee $out | xclip -selection clipboard -t image/png ;;
    " pantallazo") maim | tee $out | xclip -selection clipboard -t image/png ;;
esac
