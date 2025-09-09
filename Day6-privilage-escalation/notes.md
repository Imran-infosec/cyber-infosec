\# ============================

\# Day 6 - Privilege Escalation Audit

\# ============================



\# List all users

cat /etc/passwd



\# List all groups

cat /etc/group



\# Check sudoers

sudo cat /etc/sudoers

sudo cat /etc/sudoers.d/\*



\# Find root-level users

awk -F: '($3 == "0") {print}' /etc/passwd



\# Last login for all users

last



\# Active sessions

who

w



\# Find SUID binaries

find / -perm -4000 2>/dev/null



\# Find SGID binaries

find / -perm -2000 2>/dev/null



\# Find world-writable files

find / -type f -perm -2 -ls 2>/dev/null



\# Find world-writable directories

find / -type d -perm -2 -ls 2>/dev/null



\# Check cron jobs

sudo cat /etc/crontab

sudo ls -l /etc/cron.\*/\*



\# Check listening network services

sudo netstat -tulpn

sudo ss -tulpn



