\# Day 10 – Wireshark Basics \& Traffic Analysis



\## 1. Overview

\- Wireshark is a GUI tool for \*\*packet capture and analysis\*\*

\- Complements tcpdump for \*\*visual inspection\*\* of network traffic



\## 2. Key Features

\- \*\*Open capture files (.pcap)\*\*

\- \*\*Live capture\*\* from interfaces

\- \*\*Apply display filters\*\* (IP, port, protocol)

\- \*\*Follow TCP/UDP streams\*\*

\- \*\*Inspect packet headers and payloads\*\*

\- Export captures for reporting or further analysis



\## 3. Common Filters

\- `ip.src == <IP>` → packets from a specific source

\- `ip.dst == <IP>` → packets to a specific destination

\- `tcp`, `udp`, `icmp` → protocol filters

\- `tcp.port == 22` → filter SSH traffic

\- Combined filters: `tcp.port == 22 \&\& ip.src == 10.0.2.15`



\## 4. Practical Tips

\- Use \*\*TCP Stream\*\* to see the full conversation

\- Check repeated SYNs or ICMP floods for attacks

\- Expand packet layers to inspect headers, flags, and payload

\- Save suspicious packets for documentation or further analysis



\## 5. Key Takeaways

\- Wireshark makes \*\*packet analysis visual and easier\*\* than CLI alone

\- Filters and stream following help detect attacks and suspicious traffic

\- Together with tcpdump, it forms the core skillset for network security monitoring



