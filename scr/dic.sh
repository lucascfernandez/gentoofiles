#!/usr/bin/env bash

echo $palabra | dmenu -p "龎 Diccionario: " | sdcv $palabra | dmenu -l 10
