\# Day 7 – Network Monitoring \& Packet Analysis (Intro)



\## 1. Network Interfaces

\- `ip a` shows all network interfaces and IP addresses.

\- Useful to know which interface to capture packets on.



\## 2. Listening Ports \& Connections

\- `ss -tulpn` or `netstat -tulpn` shows services and ports.

\- Helps detect unexpected services that could be vulnerable.



\## 3. Routing

\- `ip route` shows how traffic flows in the system.



\## 4. Monitoring Traffic

\- `iftop` monitors real-time bandwidth usage per host.



\## 5. Packet Capture

\- `tcpdump` is a CLI packet sniffer.

\- Examples:

&nbsp; - Capture 100 packets: `sudo tcpdump -i eth0 -c 100`

&nbsp; - Capture only TCP: `sudo tcpdump -i eth0 tcp`

&nbsp; - Save to file: `sudo tcpdump -i eth0 -w capture.pcap`



\## 6. Packet Analysis

\- `wireshark` opens `.pcap` files in GUI.

\- Useful for analyzing suspicious traffic and protocols.



\## 7. Detecting Intrusion Attempts

\- Check SSH logs with `journalctl`.

\- Look for repeated "Failed password" or "Invalid user" → brute force attempts.



---



\### 🔹 Key Takeaway:

Today we learned the basics of network monitoring, how to capture and analyze packets, and how to spot suspicious activity. In upcoming days, we will dive deeper into \*\*tcpdump\*\* and \*\*Wireshark\*\*.



