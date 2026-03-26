#!/bin/bash
# Git Package Inspector
# Author: Dhimant Bhardwaj
# Course Project: Open Source Software Audit

# Store the package name for Git
PACKAGE="git"

# Display heading
echo "=================================================="
echo "           Git Open Source Package Audit"
echo "=================================================="

# Check package details using dpkg or rpm
if command -v dpkg >/dev/null 2>&1; then
    if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed on this system."
        dpkg -s "$PACKAGE" | grep -E 'Package:|Version:|Maintainer:|Description:'
    else
        echo "$PACKAGE is NOT installed."
    fi
elif command -v rpm >/dev/null 2>&1; then
    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed on this system."
        rpm -qi "$PACKAGE" | grep -E 'Name|Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    echo "No supported package manager found (dpkg or rpm)."
fi

# Add a short open-source note using case statement
echo ""
echo "Open Source Reflection:"
case $PACKAGE in
    git) echo "Git: a distributed version control system that transformed collaborative software development." ;;
    firefox) echo "Firefox: a browser that represents openness and user choice on the web." ;;
    vlc) echo "VLC: a community-driven media player that made multimedia more open and accessible." ;;
    python3) echo "Python: a language shaped by readability, openness, and global contribution." ;;
    *) echo "This package reflects the collaborative spirit of free and open-source software." ;;
esac
