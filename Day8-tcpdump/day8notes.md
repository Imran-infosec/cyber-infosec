

\## 2. List Interfaces

\- `sudo tcpdump -D`

\- Shows all available network interfaces (e.g., eth0, wlan0, lo).



\## 3. Capture Packets

\- `sudo tcpdump -i eth0 -c 10` → Capture 10 packets on eth0.

\- `-tttt` adds detailed timestamps.



\## 4. Filters

\- \*\*By protocol\*\*

\- TCP: `sudo tcpdump -i eth0 tcp`

\- UDP: `sudo tcpdump -i eth0 udp`

\- \*\*By host\*\*

\- `sudo tcpdump -i eth0 host 192.168.1.10`

\- \*\*By port\*\*

\- `sudo tcpdump -i eth0 port 22` (SSH)

\- `sudo tcpdump -i eth0 port 80` (HTTP)

\- \*\*Combined\*\*

\- `sudo tcpdump -i eth0 tcp and port 22`

\- `sudo tcpdump -i eth0 host 192.168.1.5 or host 192.168.1.8`



\## 5. Save to File

\- `sudo tcpdump -i eth0 -c 50 -w day8\_capture.pcap`

\- Creates a `.pcap` file for later analysis in Wireshark.



\## 6. Read from File

\- `sudo tcpdump -r day8\_capture.pcap`

\- Displays previously captured packets.



---



\## 🔹 Key Takeaway

\- \*\*tcpdump\*\* is a powerful CLI packet sniffer.

\- It allows real-time capture, filtering, and saving of traffic.

\- Captures can be exported to Wireshark for deeper analysis.

\- Today we learned \*\*basic usage + filters\*\*.

\- Tomorrow (Day 9), we will focus on \*\*advanced filters and detecting attacks (port scans, brute force, etc.)\*\*.



