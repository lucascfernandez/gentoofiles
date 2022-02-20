#!/usr/bin/env bash

ord=/home/lucas/Dropbox/ordjur/

emacsclient -cn $ord"$(ls $ord | dmenu -i -l 10 -p "Elija un Documento:")"
