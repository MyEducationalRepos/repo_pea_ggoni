#!/bin/bash

# Primero, tenemos que validar que se ingresen los parámetros correctos
if [ $# -ne 2 ]
then
  echo "Error: Es indispensable para la ejecución ingresar la tabla y la base de datos como parámetros."
  exit 100
fi

# En segundo lugar, tednemos que asignar los parámetros a variables
TABLE=$1
DB=$2

# Ejecutar el comando SQL en la base de datos
mysql -u usuario -pcontraseña -e "TRUNCATE TABLE ${DB}.${TABLE}"

# Salir con un código de éxito
exit 0

