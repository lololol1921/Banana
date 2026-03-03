#!/bin/bash

echo "Deteniendo servidor correctamente..."

# Enviar comando stop al servidor si está en screen
screen -S mc -X stuff "stop$(printf '\r')"

sleep 10

echo "Verificando cambios..."

git add .

git commit -m "Backup completo $(date '+%Y-%m-%d %H:%M:%S')" || echo "No hay cambios nuevos."

git push

echo "Backup subido correctamente."

echo "Proceso terminado."