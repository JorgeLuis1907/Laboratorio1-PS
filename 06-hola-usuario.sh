#!/bin/bash

rge
if [ "$#" -ne 0 ]; then
    echo "Error: Este script no acepta argumentos."
    show_help
    exit 1
fi


connected_users=$(who | awk '{print $1}')

echo "Por favor, ingresa el ID de un usuario conectado al sistema (número):"


while true; do
    read input
    if ! echo "$connected_users" | grep -qw "$input"; then
        echo "Error: El ID '$input' no corresponde a ningún usuario conectado al sistema."
        echo "IDs válidos corresponden a los siguientes usuarios conectados:"
        echo "$connected_users"
    else
        echo "SI"
        break  
    fi
done

