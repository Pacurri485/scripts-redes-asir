#!/bin/bash

DIRECTORIO="$1"

find "$DIRECTORIO" -maxdepth 1 -type f | wc -l