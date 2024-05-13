#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 1
fi
usuario=$1
if who | cut -d' ' -f1 | grep -q "^$usuario$"; then
    echo "SI"
else
    echo "NO"
fi
