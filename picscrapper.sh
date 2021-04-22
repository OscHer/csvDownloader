#!/bin/bash

# Programa para descargar fotos dado un csv separado por ;
# La primera columna del csv es la url a descargar
# La segunda columna del csv es el nombre con el que guardaremos la imagen

# TO DO
# 1 Unable to find wget binary
# 2 Unable to read inventory file
# 3 Download dir does not exist


# Definicion de variables
WGET_BIN=$(which wget) # Look for wget binary path
VERBOSITY=$2 # Get second parameter to set verbosity level
DEBUG=$VERBOSITY # Set verbosity level
INVENTORY_FILE=$1 # Get first parameter to set inventory file
DOWNLOAD_DIR=$INVENTORY_FILE # Name download dir as inventory file

[[ $DEBUG -ge 1 ]] && echo El valor de WGET_BIN es $WGET_BIN
[[ $DEBUG -ge 1 ]] && echo El valor de INVENTORY_FILE es $INVENTORY_FILE
[[ $DEBUG -ge 1 ]] && echo El valor de DOWNLOAD_DIR es $DOWNLOAD_DIR

# TO DO
# function show_help

# Pre requisites or exit
[[ -z $WGET_BIN ]] && (echo Binario de wget no encontrado && exit 1) 
[[ ! -f $INVENTORY_FILE ]] && (echo Archivo inventario $INVENTORY_FILE no existe && exit 2) 
[[ -w $DOWNLOAD_DIR ]] || (mkdir -p $DOWNLOAD_DIR || (echo Error: Imposible crear directorio de descarga $DOWNLOAD_DIR && exit 3))

# Main
# Crawl over inventory file
for LINEA in $(cat $INVENTORY_FILE); do 
  [[ $DEBUG -ge 1 ]] && echo El valor de LINEA es $LINEA

  URL=$(echo $LINEA | cut -f1 -d";") # Get url to download
  NAME=$(echo $LINEA | cut -f2 -d";") # Get file name to save

done


