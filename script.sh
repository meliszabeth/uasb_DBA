#!/bin/bash
# El nombre de la copia se compone de la fecha y hora del dia en que se ejecuta 
export FECHA=`date +%d-%m-%Y_%H:%M:%S`
export NAME=musicdb1_${FECHA}.dump
export DIR=/opt/backup
USER_DB=admin_user
NAME_DB=musicdb1
cd $DIR
> ${NAME}
export PGPASSWORD=andina
chmod 777 ${NAME}
echo "procesando la copia de la base de datos"
pg_dump -U $USER_DB -h localhost --port 5432 -f ${NAME} $NAME_DB
echo "backup terminado"
