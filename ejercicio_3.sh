#!/bin/bash

DIRECTORIO="$1"

ARCHIVOS=$(find "$DIRECTORIO" -maxdepth 1 -type f | wc -l)
DIRECTORIOS=$(find "$DIRECTORIO" -mindepth 1 -maxdepth 1 -type d | wc -l)

echo "Archivos: $ARCHIVOS"
echo "Directorios: $DIRECTORIOS"