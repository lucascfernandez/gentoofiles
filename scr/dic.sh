#!/usr/bin/env bash

echo $palabra | dmenu -p "Diccionario: " | sdcv $palabra | dmenu -l 10
