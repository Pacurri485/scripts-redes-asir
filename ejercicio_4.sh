#!/bin/bash

N="$1"
NUMERO=1
SUMA=0

while [ "$NUMERO" -le "$N" ]
do
    if [ $((NUMERO % 2)) -eq 0 ]
    then
        SUMA=$((SUMA + NUMERO))
    fi

    NUMERO=$((NUMERO + 1))
done

echo "La suma es: $SUMA"