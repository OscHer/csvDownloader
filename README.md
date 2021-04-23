# Descarga automática de fotos desde inventario csv

## Objetivo
Descargar una serie de archivos proporcionados en formato csv.
Las dos columnas corresponden respectivamente a la URL a descargar y al nombre con el que guardaremos el archivo.
PicScrapper creará un directorio con el nombre del inventario proporcionado y el sufijo "_downloads" donde almacenará las descargas.

## Uso
./picscrapper.sh INVENTARIO [DEBUG]
**INVENTARIO** = archivo en formato CSV. El separador de campo debe ser ";" .
**DEBUG** = Nivel de verbosidad del output. Por defecto es 0 y en la release actual el valor máximo es 1


