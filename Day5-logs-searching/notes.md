\# 📘 Day 5 - Log Monitoring \& Analysis



\## 🔹 Why log monitoring is important

\- Detects brute force attacks (failed ssh logins).

\- Tracks suspicious IP addresses.

\- Helps identify if a hacker has gained access.

\- Monitors sudo usage (who used root privileges).



---



\## 🔹 Key log sources

\- `journalctl -u ssh` → SSH login attempts

\- `journalctl \_COMM=sshd` → SSHD process logs

\- `journalctl \_COMM=sudo` → Sudo command usage



---



\## 🔹 Useful commands

\- `sudo journalctl -u ssh -f` → follow ssh logs in real-time

\- `sudo journalctl \_COMM=sshd | grep "Failed password"` → find failed logins

\- `sudo journalctl \_COMM=sshd | grep "Accepted password"` → successful logins

\- `last` → shows all login sessions

\- `lastb` → shows failed login attempts



---



\## 🔹 Tracking attackers

```bash

sudo journalctl \_COMM=sshd | grep "Failed password" | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr



