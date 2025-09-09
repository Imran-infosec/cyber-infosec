#!/bin/bash
# Day 9 - Advanced tcpdump & detecting suspicious activity

# 1️⃣ List network interfaces
sudo tcpdump -D

# 2️⃣ Capture first 20 packets on eth0
sudo tcpdump -i eth0 -c 20

# 3️⃣ Capture TCP traffic only
sudo tcpdump -i eth0 tcp -c 20

# 4️⃣ Capture UDP traffic only
sudo tcpdump -i eth0 udp -c 20

# 5️⃣ Capture traffic from a specific source IP
sudo tcpdump -i eth0 src 192.168.1.50 -c 20

# 6️⃣ Capture traffic to a specific destination IP
sudo tcpdump -i eth0 dst 192.168.1.50 -c 20

# 7️⃣ Capture traffic for a network range / subnet
sudo tcpdump -i eth0 net 192.168.1.0/24 -c 20

# 8️⃣ Exclude a port (example SSH 22)
sudo tcpdump -i eth0 not port 22 -c 20

# 9️⃣ Capture packets with contents (HEX + ASCII)
sudo tcpdump -i eth0 -X -c 10

# 🔟 Capture only headers (no payload)
sudo tcpdump -i eth0 -n -v -c 10

# 11️⃣ Detect SYN packets (common for port scans)
sudo tcpdump -i eth0 'tcp[tcpflags] & (tcp-syn) != 0' -c 50

# 12️⃣ Capture SSH brute force attempts
sudo tcpdump -i eth0 port 22 -w ssh_bruteforce.pcap

# 13️⃣ Capture ICMP packets (Ping/DoS detection)
sudo tcpdump -i eth0 icmp -c 50

# 14️⃣ Read saved capture files
sudo tcpdump -r ssh_bruteforce.pcap
