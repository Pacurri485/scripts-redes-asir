#!/bin/bash

DIRECTORIO="$1"
TAMANO="$2"

find "$DIRECTORIO" -type f -size +"${TAMANO}"M -delete