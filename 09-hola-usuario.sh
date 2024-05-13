#!/bin/bash


if [ "$#" -ne 0 ]; then
    echo "Error: Este script no acepta argumentos."
    exit 1
fi

echo "Por favor, ingresa el nombre de usuario de un usuario conectado al sistema:"

while true; do
    read input
    echo $input
    connected=$(./usuarioconectado.sh "$input")
    echo $connected
    if [ "$connected" = "SI" ]; then
        echo "¡Gracias! El usuario '$input' está conectado al sistema."
        break
    fi
   
done

