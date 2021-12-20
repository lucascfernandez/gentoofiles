#!/bin/bash

dmenu=$(echo -e " canales\nﳲ video\n阮 musica\n anime" | dmenu -i -p "輸 Stream:")


case "$dmenu" in
	" canales") ytfzf -D -S -f ;;
	"ﳲ video") alacritty -e ytfzf -stf ;;
	"阮 musica") alacritty -e ytfzf -stm ;;
	" anime") alacritty -e ani-cli -q 480 ;;

esac

