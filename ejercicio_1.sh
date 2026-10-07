#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Este script debe ejecutarse como root."
    exit 1
fi

FICHERO="$1"
OPCION="$2"
FECHA=$(date)

if [ -f "$FICHERO" ]
then
    if [ "$OPCION" = "-a" ]
    then
        echo "$FECHA" >> "$FICHERO"
    elif [ "$OPCION" = "-s" ]
    then
        echo "$FECHA" > "$FICHERO"
    fi
else
    echo "$FECHA" > "$FICHERO"
fi