\# Tcpdump Output Analysis - Day 9



\## Line 1

10.0.2.15.34316 > 34.160.144.191.443: Flags \[.], cksum incorrect, ack 47  

➡ ACK packet, acknowledging data received, no payload.



\## Line 2

10.0.2.15.32840 > 151.101.241.91.443: Flags \[P.], seq 2805507812:2805507858, length 46  

➡ PSH+ACK packet, client sends 46 bytes of data to server.



\## Line 3

151.101.241.91.443 > 10.0.2.15.32840: Flags \[.], ack 46  

➡ Server acknowledges receipt of the 46-byte packet.



\## Line 4

151.101.241.91.443 > 10.0.2.15.32840: Flags \[P.], seq 1:47, length 46  

➡ Server sends 46 bytes of data to client with ACK.



