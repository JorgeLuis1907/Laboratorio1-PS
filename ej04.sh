#!/bin/bash
echo "ingresa dos numeros"
read var1
read var2
if [ $var1 -le $var2 ]
then
echo $var1 " es el menor o igual"
else
echo $var2 " es el menor"
fi;
