#!/usr/bin/env bash
# backing up our directory on another computer system or server

# Remote server details
HOST="a0dfc11ba139.a982e858.alu-cod.online"
USERNAME="a0dfc11ba139"

# Directory to be backed up
SOURCE_DIR="0323-RW-SOFEN-8120120-14_q1"

# Location for backup on the remote server
REMOTE_DIR="/home/sftp-student/03033/summative"

# Backup file name
BACKUP_FILE="${SOURCE_DIR}.tar.gz"

# Compress the source directory into a tarball
tar -czf "${BACKUP_FILE}" "${SOURCE_DIR}"

# Upload the backup file to the remote server using SCP
scp "${BACKUP_FILE}" "${USERNAME}@${HOST}:${REMOTE_DIR}"

# Clean up the local backup file
rm "${BACKUP_FILE}"
