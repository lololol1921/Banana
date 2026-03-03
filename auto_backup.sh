#!/bin/bash

while true
do
  LATEST=$(ls -t backups/*.tar.gz 2>/dev/null | head -n 1)

  if [ -n "$LATEST" ]; then
    echo "Backup encontrado: $LATEST"
    git add "$LATEST"
    git commit -m "Auto backup $(date '+%Y-%m-%d %H:%M:%S')" || true
    git push
  else
    echo "No se encontró backup en /backups."
  fi

  sleep 300
done