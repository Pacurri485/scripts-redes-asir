#!/bin/bash

DIRECTORIO="$1"
PATRON="$2"
REEMPLAZO="$3"

for archivo in "$DIRECTORIO"/*
do
    if [ -f "$archivo" ]
    then
        sed -i "s/$PATRON/$REEMPLAZO/g" "$archivo"
    fi
done