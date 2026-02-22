#!/bin/bash

echo "Iniciando servidor NeoForge..."

# Ejecuta el servidor directamente
java @user_jvm_args.txt @libraries/net/neoforged/neoforge/21.1.219/unix_args.txt nogui

echo "Servidor detenido. Creando backup..."

FECHA=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf backups/world_$FECHA.tar.gz world

echo "Backup creado correctamente en backups/world_$FECHA.tar.gz"
