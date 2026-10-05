#!/bin/bash

EXTENSION="$1"
DIRECTORIO="$2"
DIAS="$3"
PREFIJO="$4"

find "$DIRECTORIO" -type f -name "*.$EXTENSION" -mtime "-$DIAS" | while read archivo
do
    directorio=$(dirname "$archivo")
    nombre=$(basename "$archivo")

    mv "$archivo" "$directorio/$PREFIJO$nombre"
done