#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <logfile>"
    exit 1
fi

logfile=$1
count=0

echo "Analyzing log file: $logfile"

while read line
do
    if echo "$line" | grep -q "ERROR"; then
        count=$((count + 1))
    fi
done < "$logfile"

echo "Total ERROR lines: $count"
