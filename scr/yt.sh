#!/bin/bash

dmenu=$(echo -e "canales\nvideo\nmusica" | dmenu -i -p "YouTube:")


case "$dmenu" in
	"canales") ytfzf -D -S -f ;;
	"video") ytfzf -D -f ;;
	"musica") ytfzf -D -m ;;

esac

