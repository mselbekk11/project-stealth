#!/bin/bash

REPO_DIR="/Users/morgan/projects/project-stealth"
LOG_FILE="$REPO_DIR/logs/activity.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

cd "$REPO_DIR" || exit 1

echo "$DATE - daily log" >> "$LOG_FILE"

git add -A
git commit -m "daily log: $(date +%Y-%m-%d)"
git push origin main
