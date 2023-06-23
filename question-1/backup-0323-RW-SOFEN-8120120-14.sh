#!/usr/bin/env bash
# backing up our directory on another computer system or server

# Remote server details
HOST="a0dfc11ba139.a982e858.alu-cod.online"
USERNAME="a0dfc11ba139"
PASSWORD="899c79fc532cd0591af1"

# Directory to be backed up
SOURCE_DIR="0323-RW-SOFEN-8120120-14_q1"

# Location for backup on the remote server
REMOTE_DIR="/home/sftp-student/03033/summative"

# Backup file name
BACKUP_FILE="${SOURCE_DIR}.tar.gz"

# Compress the source directory into a tarball
tar -czf "${BACKUP_FILE}" "${SOURCE_DIR}"

# Upload the backup file to the remote server using SFTP
sftppass -p "${PASSWORD}" sftp "${USERNAME}@${HOST}:${REMOTE_DIR}" <<< "put ${BACKUP_FILE}"

# Clean up the local backup file
rm "${BACKUP_FILE}"
