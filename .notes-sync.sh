#!/bin/bash

# Single device auto sync
# NOTE: Doesn't work for multiple devices. Need gi pull --rebase

# crontab to run every 2 hrs
# 0 */2 * * * /home/peppermint/Documents/notes/.notes-sync.sh >> /home/peppermint/Documents/notes/.notes-sync.log 2>&1

cd ~/Documents/notes || exit 1

git add -A
if ! git diff --cached --quiet; then
    git commit -m "Auto-sync $(date '+%Y-%m-%d %H:%M')"
    git push origin main
fi
