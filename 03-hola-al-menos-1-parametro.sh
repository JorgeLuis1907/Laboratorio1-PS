#!/bin/bash
while [ $# -eq 0 ]; do
    echo "Ingresa al menos un parámetro:"
    read -r var1
    if [ -n "$var1" ]; then
        set -- "$var1"
    fi
done
echo " Hola, has proporcionado los siguientes parámetros: "$@
