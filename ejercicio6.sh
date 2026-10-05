#!/bin/bash

DIRECTORIO="$1"

find "$DIRECTORIO" -type f -mtime +7 -delete