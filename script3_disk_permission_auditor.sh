#!/bin/bash
# Disk and Permission Auditor
# Author: Dhimant Bhardwaj
# Course Project: Open Source Software Audit

# List of important Linux directories to check
CHECK_DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================================="
echo "         Disk and Permission Audit Report"
echo "=================================================="

# Loop through each directory and display permissions + size
for ITEM in "${CHECK_DIRS[@]}"; do
    if [ -d "$ITEM" ]; then
        DETAILS=$(ls -ld "$ITEM" | awk '{print $1, $3, $4}')
        USAGE=$(du -sh "$ITEM" 2>/dev/null | cut -f1)
        echo "$ITEM => Permissions: $DETAILS | Size: $USAGE"
    else
        echo "$ITEM does not exist on this system."
    fi
done

echo ""
echo "=================================================="
echo "             Git Configuration Check"
echo "=================================================="

# Check Git configuration file in user's home directory
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    CONFIG_INFO=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "$GIT_CONFIG exists."
    echo "Permissions: $CONFIG_INFO"
else
    echo "$GIT_CONFIG not found."
    echo "Git may not be configured for this user yet."
fi
