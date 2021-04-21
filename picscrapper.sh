#!/bin/bash

# Programa para descargar fotos dado un csv separado por ;
# La primera columna del csv es la url a descargar
# La segunda columna del csv es el nombre con el que guardaremos la imagen

# Definicion de variables
WGET_BIN=$(which wget) 

echo binario wget $WGET_BIN


#Main
# Pre requisites or exit
[[ -z $WGET_BIN ]] && (echo Binario de wget no encontrado && exit 1) 
