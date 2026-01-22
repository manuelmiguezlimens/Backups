#!/bin/bash

# ----------------------------
# Restauración de backup
# ----------------------------
BACKUP_DIR="/home/usuario/backups"
RESTORE_DIR="/home/usuario/data_restore"

echo "Backups disponibles:"
ls -1t "$BACKUP_DIR"

read -p "Ingresa el nombre del backup a restaurar: " BACKUP_FILE

if [ ! -f "$BACKUP_DIR/$BACKUP_FILE" ]; then
    echo "ERROR: Backup no encontrado"
    exit 1
fi

mkdir -p "$RESTORE_DIR"
tar -xzf "$BACKUP_DIR/$BACKUP_FILE" -C "$RESTORE_DIR"

echo "Restauración completada en $RESTORE_DIR"
