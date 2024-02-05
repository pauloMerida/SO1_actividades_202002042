#!/bin/bash


GITHUB_USER="pauloMerida"


API_URL="https://api.github.com/users/$GITHUB_USER"
JSON_DATA=$(curl -s $API_URL)


USER_ID=$(echo $JSON_DATA | jq -r '.id')
CREATED_AT=$(echo $JSON_DATA | jq -r '.created_at')


MESSAGE="Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."


CURRENT_DATE=$(date +"%Y%m%d")


LOG_DIR="/tmp/$CURRENT_DATE"
mkdir -p $LOG_DIR


LOG_FILE="$LOG_DIR/saludos.log"
echo $MESSAGE > $LOG_FILE


echo $MESSAGE


CRON_ENTRY="*/5 * * * * /home/paulo/Documentos/script_git.sh"
(crontab -l 2>/dev/null; echo "$CRON_ENTRY") | crontab -
