#!/bin/bash

dmenu=$(echo -e "canales\nvideo\nmusica\nanime" | dmenu -l 4 -i -p "Stream:")


case "$dmenu" in
	"canales") ytfzf -D -S -f ;;
	"video") st -e ytfzf -stf ;;
	"musica") st -e ytfzf -stm ;;
	"anime") st -e ani-cli -q 480 ;;

esac

