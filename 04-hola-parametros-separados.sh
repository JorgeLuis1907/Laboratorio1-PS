#!/bin/bash

for (( i=1; i<=$#; i++ )); do
    actual="${!i}"
	
    if [ "$i" -eq "$#" ]; then
        echo $actual
    else
        echo -n $actual" , "
    fi
done
