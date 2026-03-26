#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Dhimant Bhardwaj
# Checks if Git is installed and displays package details

PACKAGE="git"

echo "**********************************************"
echo " FOSS Package Inspector - Git"
echo "**********************************************"

if command -v dpkg >/dev/null 2>&1; then
    if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        dpkg -s "$PACKAGE" | grep -E 'Package:|Version:|Maintainer:|Description:'
    else
        echo "$PACKAGE is NOT installed."
    fi
elif command -v rpm >/dev/null 2>&1; then
    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        rpm -qi "$PACKAGE" | grep -E 'Name|Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    echo "No supported package manager found."
fi

echo ""
echo "Open Source Reflection:"
case $PACKAGE in
    git) echo "Git: created for distributed collaboration when proprietary tools became a bottleneck." ;;
    vlc) echo "VLC: open media access without codec lock-in." ;;
    firefox) echo "Firefox: a community defense of the open web." ;;
    apache2|httpd) echo "Apache: infrastructure that helped build the modern internet." ;;
    *) echo "Open source software grows because communities trust each other." ;;
esac
