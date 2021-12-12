#!/bin/bash

dmenu=$(echo -e "canales\nvideo\nmusica" | dmenu -i -p "輸 YouTube:")


case "$dmenu" in
	"canales") ytfzf -D -S -f ;;
	"video") alacritty -e ytfzf -tf ;;
	"musica") ytfzf -D -m ;;

esac

