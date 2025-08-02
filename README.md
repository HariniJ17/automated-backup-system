# Automated Backup System using Shell Script

This project is a simple Linux-based automation script that backs up user-specified directories into timestamped `.tar.gz` files. It uses a Bash script combined with `cron` to schedule backups (e.g., daily at 10:10 AM). The system includes optional log tracking and cleanup of old backups to manage storage efficiently.

## Technologies Used
- Bash (Shell Script)
- tar
- cron (Linux scheduler)
- Linux OS

## How It Works
1. Archives selected folders using `tar`
2. Appends a timestamp to the filename
3. Stores it in a backup folder
4. Runs automatically at a scheduled time using `cron`

