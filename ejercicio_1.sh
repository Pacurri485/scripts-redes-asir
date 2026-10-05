#!/bin/bash

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