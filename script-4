#!/bin/bash
# Script 4: Log File Analyzer
# Author: Dhimant Bhardwaj
# Usage: ./script4_log_analyzer.sh /var/log/syslog warning

LOGFILE=$1
KEYWORD=${2:-"warning"}
MATCHES=0

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

RETRY=1
while [ ! -s "$LOGFILE" ] && [ $RETRY -le 2 ]; do
    echo "Log file is empty. Retry $RETRY..."
    sleep 1
    RETRY=$((RETRY + 1))
done

if [ ! -s "$LOGFILE" ]; then
    echo "Error: Log file is still empty."
    exit 1
fi

while IFS= read -r ENTRY; do
    if echo "$ENTRY" | grep -iq "$KEYWORD"; then
        MATCHES=$((MATCHES + 1))
    fi
done < "$LOGFILE"

echo "**********************************************"
echo "The keyword '$KEYWORD' appears $MATCHES times in $LOGFILE"
echo "**********************************************"
echo "Last 5 matching log lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
