---
### **Script 1 — System Identity Report (Dhimant)**
```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Dhimant Bhardwaj | Course: Open Source Software
# Project Software: Git

STUDENT_NAME="Dhimant Bhardwaj"
SOFTWARE_CHOICE="Git"

KERNEL_VERSION=$(uname -r)
LOGIN_USER=$(whoami)
USER_HOME=$HOME
SYSTEM_UPTIME=$(uptime -p)
NOW=$(date "+%A, %d %B %Y %I:%M:%S %p")

if [ -f /etc/os-release ]; then
    DISTRO_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO_NAME="Unknown"
fi

echo "**********************************************"
echo " Open Source Audit - $STUDENT_NAME"
echo "**********************************************"
echo "Selected Software : $SOFTWARE_CHOICE"
echo "Distribution      : $DISTRO_NAME"
echo "Kernel            : $KERNEL_VERSION"
echo "Logged-in User    : $LOGIN_USER"
echo "Home Directory    : $USER_HOME"
echo "Uptime            : $SYSTEM_UPTIME"
echo "Date and Time     : $NOW"
echo "Linux License     : GPL v2 (Linux kernel)"
echo "**********************************************"
echo "This system runs on open foundations built by global communities."
