#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Uso: $0 <nombre_de_usuario>"
    exit 1
fi
usuario="$1"
while true; do
    lista=$(getent passwd | awk -F: '{ print $1}')
    estado=false
    for user in $lista; do
        if [ "$user" = "$usuario" ]; then
            echo "¡Usuario encontrado! El usuario '$usuario' existe en el sistema."
            estado=true
            break
        fi
    done
    if [ "$estado" = false ]; then
        echo "El usuario '$usuario' no existe. Por favor, ingresa otro nombre de usuario:"
        read usuario
    else
        break
    fi
done

