#!/bin/bash

# Programa para descargar fotos dado un csv separado por ;
# La primera columna del csv es la url a descargar
# La segunda columna del csv es el nombre con el que guardaremos la imagen



# Definicion de variables
WGET_BIN=$(which wget) # Look for wget binary path
VERBOSITY=$1 # Get first parameter to set verbosity levelt
DEBUG=$VERBOSITY # Set verbosity level

[[ $DEBUG -ge 1 ]] && echo El valor de WGET_BIN es $WGET_BIN


#Main
# Pre requisites or exit
[[ -z $WGET_BIN ]] && (echo Binario de wget no encontrado && exit 1) 






