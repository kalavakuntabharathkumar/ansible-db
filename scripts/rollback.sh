#!/usr/bin/env bash
set -euo pipefail

DB_NAME="${DB_NAME:-appdb}"
BACKUP_FILE="${BACKUP_FILE:-/var/backups/postgresql/${DB_NAME}_$(date +%F).sql}"

if [[ ! -f "$BACKUP_FILE" ]]; then
  echo "Backup not found: $BACKUP_FILE"
  exit 1
fi

sudo -u postgres psql -c "DROP DATABASE IF EXISTS ${DB_NAME};"
sudo -u postgres psql -c "CREATE DATABASE ${DB_NAME};"
sudo -u postgres psql "$DB_NAME" < "$BACKUP_FILE"
echo "Rollback completed from $BACKUP_FILE"
