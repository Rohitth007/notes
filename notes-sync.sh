#!/bin/bash
cd ~/Documents/notes || exit 1

git add -A
if ! git diff --cached --quiet; then
    git commit -m "Auto-sync $(date '+%Y-%m-%d %H:%M')"
    git push origin main
fi
