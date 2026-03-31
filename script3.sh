#!/bin/bash

echo "=============================="
echo " DISK & PERMISSION AUDITOR"
echo "=============================="

directories=("/" "/home" "/var" "/tmp" "/usr")

for dir in "${directories[@]}"
do
    echo "Directory: $dir"

    # Disk usage
    usage=$(du -sh $dir 2>/dev/null | cut -f1)
    echo "Disk Usage: $usage"

    # Owner and permissions
    details=$(ls -ld $dir | awk '{print $1, $3, $4}')
    echo "Permissions & Owner: $details"

    echo "------------------------------"
done
