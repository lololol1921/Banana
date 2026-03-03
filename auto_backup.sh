#!/bin/bash

INTERVAL=300   # Cambia este número (300 = 5 minutos)

echo "Auto-backup iniciado. Intervalo: $INTERVAL segundos."

while true
do
  echo "Guardando mundo..."

  git add .

  git commit -m "Auto backup $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null || echo "Sin cambios."

  git push 2>/dev/null

  echo "Esperando $INTERVAL segundos..."
  sleep $INTERVAL
done
