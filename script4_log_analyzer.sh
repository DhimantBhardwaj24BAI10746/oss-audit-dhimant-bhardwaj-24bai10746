#!/bin/bash
# Log File Analyzer
# Author: Dhimant Bhardwaj
# Course Project: Open Source Software Audit
# Usage: ./script4_log_analyzer.sh <logfile> [keyword]

LOGFILE=$1
KEYWORD=${2:-"warning"}
MATCHES=0

# Check if logfile argument is provided
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry if file is empty (up to 2 retries)
RETRY=1
while [ ! -s "$LOGFILE" ] && [ $RETRY -le 2 ]; do
    echo "Log file is empty. Retry $RETRY..."
    sleep 1
    RETRY=$((RETRY + 1))
done

# If still empty after retries
if [ ! -s "$LOGFILE" ]; then
    echo "Error: Log file is still empty."
    exit 1
fi

# Read file line by line and count keyword matches
while IFS= read -r ENTRY; do
    if echo "$ENTRY" | grep -iq "$KEYWORD"; then
        MATCHES=$((MATCHES + 1))
    fi
done < "$LOGFILE"

echo "=================================================="
echo "              Log File Analyzer Report"
echo "=================================================="
echo "Log File   : $LOGFILE"
echo "Keyword    : $KEYWORD"
echo "Matches    : $MATCHES"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
