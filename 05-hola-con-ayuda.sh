#!/bin/bash
verificar_numero(){
	[[ $1 =~ ^[0-9]+$ ]]
	
}
ayuda(){
	echo "Solo se permitirá numeros positivos, ingrese 0 (cero) para salir"
	echo "1-9"
}
pedir_numero(){
	while true; do
		read numero
		if [ $numero -eq "0" ]; then
			exit
		fi
		if verificar_numero $numero; then
			echo "Bien hecho, el numero es: "$numero	
		else
			ayuda
		fi
	done	
}
if [ $# -eq 0 ]; then
	echo "No se ingreso parametros. Ingresa solo numeros"
	pedir_numero
	echo $*
else
	for var in $@; do
		if verificar_numero $var; then
			echo $*
		else
			ayuda
			pedir_numero
			echo $*

		fi
	done
fi
