#!/bin/bash

dmenu=$(echo -e "canales\nvideo\nmusica\nanime" | dmenu -i -p "Stream:")


case "$dmenu" in
	"canales") ytfzf -D -S -f ;;
	"video") alacritty -e ytfzf -stf ;;
	"musica") alacritty -e ytfzf -stm ;;
	"anime") alacritty -e ani-cli -q 480 ;;

esac

