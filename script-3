#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Dhimant Bhardwaj
# Audits key directories and checks Git config file location

CHECK_DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "**********************************************"
echo " Disk and Permission Auditor"
echo "**********************************************"

for ITEM in "${CHECK_DIRS[@]}"; do
    if [ -d "$ITEM" ]; then
        DETAILS=$(ls -ld "$ITEM" | awk '{print $1, $3, $4}')
        USAGE=$(du -sh "$ITEM" 2>/dev/null | cut -f1)
        echo "$ITEM => $DETAILS | Size Used: $USAGE"
    else
        echo "$ITEM is missing on this system"
    fi
done

echo ""
echo "**********************************************"
echo " Git Configuration Check"
echo "**********************************************"

GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    CONFIG_INFO=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "$GIT_CONFIG exists."
    echo "Permissions: $CONFIG_INFO"
else
    echo "$GIT_CONFIG not found. Git may not be configured for this user yet."
fi
