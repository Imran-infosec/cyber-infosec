"# Day 4 - Linux Security & Hardening" 
# Day 4 – Linux Security & Hardening Commands

## 1. User & Group Management

```bash
# Add new user
sudo adduser testuser

# Add user to sudo group
sudo usermod -aG sudo testuser

# Verify users and groups
cat /etc/passwd
groups testuser
```

---

## 2. File Permissions & Special Bits

```bash
# Normal permissions example
ls -l

# Add SUID (run with owner’s permissions)
sudo chmod u+s /path/to/executable
ls -l /path/to/executable

# Add SGID (run with group’s permissions or inherit group in directories)
sudo chmod g+s /path/to/directory
ls -ld /path/to/directory
```

---

## 3. Process & Service Monitoring

```bash
# Show all processes
ps aux

# Interactive process viewer
top

# Check listening ports and services
sudo netstat -tulpn
```

---

## 4. Firewall Setup with UFW

```bash
# Enable firewall
sudo ufw enable

# Allow SSH connections
sudo ufw allow ssh

# Show firewall status
sudo ufw status
```

---

## 5. Log Monitoring

### If using log files (Debian/Ubuntu):

```bash
# Authentication logs
cat /var/log/auth.log

# System logs
cat /var/log/syslog
```

### If using log files (CentOS/RHEL):

```bash
cat /var/log/secure
cat /var/log/messages
```

### If using systemd journald:

```bash
# Show all logs
journalctl

# Show SSH logs
journalctl -u ssh

# Show only errors since last boot
journalctl -p err -b

# Show last 50 log lines
journalctl -n 50
```

---

## 6. Fail2Ban (if installed)

```bash
# Check Fail2Ban status
sudo fail2ban-client status

# Check specific jail (e.g., SSH)
sudo fail2ban-client status sshd
```

---

## 7. SUID Enumeration (Attack/Defense)

```bash
# Find all files with SUID bit set
find / -perm -4000 2>/dev/null

# Remove SUID from a file (fix misconfiguration)
sudo chmod u-s /path/to/file
```

---

✅ Use these commands during Day 4 to practice and document your findings.
