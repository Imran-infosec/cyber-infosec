\# Day 11 – Advanced Wireshark \& Traffic Analysis



\## 1. Overview

\- Wireshark allows \*\*visual inspection\*\* of captured traffic

\- Today we focus on \*\*detecting suspicious/malicious patterns\*\*



\## 2. Detectable Suspicious Traffic

\- \*\*Port scans\*\*

&nbsp; - Filter: tcp.flags.syn == 1 \&\& tcp.flags.ack == 0

&nbsp; - Shows initial connection attempts without ACK

\- \*\*SSH brute force\*\*

&nbsp; - Filter: tcp.port == 22

&nbsp; - Look for repeated login attempts from same IP

\- \*\*ICMP floods / Ping DoS\*\*

&nbsp; - Filter: icmp

&nbsp; - Large number of ICMP packets in short time



\## 3. Tools \& Features

\- \*\*Coloring rules\*\*

&nbsp; - SYN → red

&nbsp; - ACK → blue

&nbsp; - ICMP → green

\- \*\*TCP Stream following\*\*

&nbsp; - Check full conversation

&nbsp; - Useful for payload analysis and detecting attacks

\- \*\*Packet details inspection\*\*

&nbsp; - Ethernet → MAC addresses

&nbsp; - IP → TTL, flags

&nbsp; - TCP/UDP → sequence, acknowledgment, flags

&nbsp; - Application → payload



\## 4. Best Practices

\- Always save suspicious traffic for \*\*further analysis\*\*

\- Combine \*\*filters + coloring + stream following\*\* for efficient detection

\- Document all findings for reporting



\## 5. Key Takeaways

\- Day 11 teaches \*\*practical detection of malicious traffic\*\*

\- Helps in understanding attacker patterns

\- Forms the foundation for \*\*network forensics and incident response\*\*



