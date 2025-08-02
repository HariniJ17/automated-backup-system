#!/bin/bash

# === CONFIGURATION ===

# Directories to back up (space-separated)
SOURCE_DIRS="/home/yourusername/Documents /home/yourusername/Pictures"

# Destination directory for backups
DEST_DIR="/home/yourusername/backups"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Timestamp format: YYYY-MM-DD_HH-MM-SS
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name with timestamp
BACKUP_FILE="$DEST_DIR/backup_$TIMESTAMP.tar.gz"

# Perform the backup
tar -czf "$BACKUP_FILE" $SOURCE_DIRS

# Optional: Delete backups older than 7 days
find "$DEST_DIR" -type f -name "*.tar.gz" -mtime +7 -delete

# Optional: Log message
echo "Backup completed at $TIMESTAMP -> $BACKUP_FILE"
