#!/usr/bin/env bash

ord=/home/lucas/Desktop/ordjur/

emacsclient -cn $ord"$(ls $ord | dmenu -i -l 10 -p "Elija un Documento:")"
