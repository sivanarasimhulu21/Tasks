#!/bin/bash

backup_dir="/home/ubuntu/backup"

while true; do
    # Generate a timestamp for unique file names
    timestamp=$(date +%y-%m-%d-%H-%M-%S)

    txt_file="$backup_dir/top_$timestamp.txt"
    tar_file="$backup_dir/top_backup_$timestamp.tar.gz"

    top -b -n 1 > "$txt_file"

    # Create a tar archive for the text file
    tar -czf "$tar_file" -C "$backup_dir" "$(basename "$txt_file")"

    echo "Backup created: $tar_file"

    sleep 10
done
