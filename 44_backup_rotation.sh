#!/bin/bash
# Script 44: Automated Directory Backup with 7-Day Rotation
# Description: Creates a timestamped tar.gz backup and removes backups older than 7 days.

set -euo pipefail

SOURCE_DIR="${1:-/etc}"
BACKUP_DIR="/tmp/backups"
RETENTION_DAYS=7
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$(basename "$SOURCE_DIR")_${TIMESTAMP}.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Starting backup of $SOURCE_DIR..."
tar -czf "$BACKUP_FILE" "$SOURCE_DIR" 2>/dev/null
echo "Backup created: $BACKUP_FILE ($(du -sh "$BACKUP_FILE" | awk '{print $1}'))"

echo "Cleaning up backups older than $RETENTION_DAYS days..."
find "$BACKUP_DIR" -name "backup_*.tar.gz" -type f -mtime +$RETENTION_DAYS -exec rm -f {} \;

echo "Backup and rotation completed successfully."
