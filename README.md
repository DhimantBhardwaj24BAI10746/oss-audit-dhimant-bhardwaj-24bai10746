# Open Source Audit - Git

## Student Details
- Name: Dhimant Bhardwaj
- Roll Number: 24BAI10746
- Course: Open Source Software
- Project Title: The Open Source Audit - Git

## Chosen Software
Git is a free and open-source distributed version control system originally created by Linus Torvalds. It helps developers track changes, collaborate efficiently, and manage software projects across multiple contributors.

## Repository Contents
- script1_system_identity.sh
- script2_package_inspector.sh
- script3_disk_permission_auditor.sh
- script4_log_analyzer.sh
- script5_manifesto_generator.sh
- README.md

## Script Descriptions

### 1. System Identity Report
Displays Linux distribution, kernel version, current user, home directory, uptime, date/time, and an open-source license message, with Git as the selected software.

### 2. FOSS Package Inspector
Checks whether Git is installed, prints package version and summary, and shows a short open-source reflection using a case statement.

### 3. Disk and Permission Auditor
Audits important Linux directories and checks the Git configuration file location and permissions.

### 4. Log File Analyzer
Reads a log file line by line, counts keyword matches, and prints the last 5 matching lines.

### 5. Open Source Manifesto Generator
Asks three questions interactively and generates a personalized open-source philosophy statement in a text file.

## How to Run

Make scripts executable:

```bash
chmod +x *.sh

Run the scripts:

./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_permission_auditor.sh
./script4_log_analyzer.sh /var/log/syslog warning
./script5_manifesto_generator.sh
```

If `/var/log/syslog` does not exist on your Linux system, use:

```bash
./script4_log_analyzer.sh /var/log/dpkg.log warning
```

## Dependencies
- Bash shell
- Core Linux utilities (uname, whoami, uptime, ls, du, grep, tail, awk, cut)
- Package manager tools (dpkg or rpm)
- Git installed on the Linux system for Git-specific checks
