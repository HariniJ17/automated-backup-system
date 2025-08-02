# Automated Backup System using Shell Script and Cron

This project automates the process of backing up user-specified directories using a Bash script (`tar`) and schedules it with `cron`.

## 🔧 Features
- Archives selected directories into timestamped `.tar.gz` files
- Schedules daily backups via `cron` (e.g., 10:10 AM)
- Optionally deletes backups older than 7 days
- Logs backup results for monitoring

## 💻 Technologies Used
- Bash (Shell Scripting)
- tar
- cron
- Linux

## 📝 Setup

1. **Edit `backup.sh`** and update:
   ```bash
   SOURCE_DIRS="/home/yourusername/Documents /home/yourusername/Pictures"
   DEST_DIR="/home/yourusername/backups"
