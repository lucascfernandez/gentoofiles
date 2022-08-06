#!/bin/bash

dmenu=$(echo -e "reproducir\ncanales\nvideo\nmusica\nanime" | dmenu -l 4 -i -p "Stream:")


case "$dmenu" in
    "reproducir") mpv $(xclip -o) ;;
    "canales") ytfzf -D -c S ;;
    "video") st -e ytfzf -stf ;;
    "musica") st -e ytfzf -stm ;;
    "anime") st -e ani-cli -q 480 ;;
esac

