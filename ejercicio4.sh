#!/bin/bash

ORIGEN="$1"
DESTINO="$2"

for archivo in "$ORIGEN"/*
do
    cp "$archivo" "$DESTINO"
done