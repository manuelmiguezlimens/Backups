#!/bin/bash

# ----------------------------
# Configuración
# ----------------------------
SOURCE_DIR="/home/manu/data"
BACKUP_DIR="/home/manu/Documentos/scripts/backup-basic"
LOG_DIR="/home/manu/Documentos/scripts/backup-basic"
MAX_BACKUPS=5

# Fecha y nombre de archivo
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Crear directorios si no existen
mkdir -p "$BACKUP_DIR" "$LOG_DIR"

# ----------------------------
# Realizar backup
# ----------------------------
echo "[$(date)] Iniciando backup..." | tee -a "$LOG_DIR/backup.log"

tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" . 2>>"$LOG_DIR/backup.log"

if [ $? -eq 0 ]; then
    echo "[$(date)] Backup completado: $BACKUP_FILE" | tee -a "$LOG_DIR/backup.log"
else
    echo "[$(date)] ERROR: Backup fallido" | tee -a "$LOG_DIR/backup.log"
    exit 1
fi

# ----------------------------
# Rotación de backups
# ----------------------------
cd "$BACKUP_DIR"
BACKUPS_COUNT=$(ls -1 *.tar.gz 2>/dev/null | wc -l)

if [ "$BACKUPS_COUNT" -gt "$MAX_BACKUPS" ]; then
    echo "[$(date)] Rotando backups antiguos..." | tee -a "$LOG_DIR/backup.log"
    ls -1t *.tar.gz | tail -n +$((MAX_BACKUPS+1)) | xargs rm -f
fi

echo "[$(date)] Backup y rotación completados." | tee -a "$LOG_DIR/backup.log"
