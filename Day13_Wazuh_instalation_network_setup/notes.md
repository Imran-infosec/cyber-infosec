\# Day 13 – Full Material: Wazuh, SSH, Network \& Mini Challenge



\## 1️⃣ Fix Repository GPG Keys



\### Kali Repository



```

sudo apt update --allow-unauthenticated

sudo apt install -y kali-archive-keyring

wget -q -O - https://archive.kali.org/archive-key.asc | gpg --dearmor | sudo tee /usr/share/keyrings/kali-archive-keyring.gpg > /dev/null

sudo nano /etc/apt/sources.list

\# Ensure line is:

\# deb \[signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] http://http.kali.org/kali kali-rolling main contrib non-free

sudo apt update

```



\### Metasploit Repository



```

curl https://apt.metasploit.com/metasploit-framework.gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/metasploit.gpg > /dev/null

sudo nano /etc/apt/sources.list.d/metasploit-framework.list

\# Ensure line is:

\# deb \[signed-by=/usr/share/keyrings/metasploit.gpg] https://downloads.metasploit.com/data/releases/metasploit-framework/apt lucid main

sudo apt update

```



---



\## 2️⃣ Install Wazuh



\### Add Wazuh Repository



```

sudo apt install curl gnupg lsb-release -y

curl -s https://packages.wazuh.com/key/GPG-KEY-WAZUH | gpg --dearmor | sudo tee /usr/share/keyrings/wazuh.gpg > /dev/null

echo "deb \[signed-by=/usr/share/keyrings/wazuh.gpg] https://packages.wazuh.com/4.x/apt stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list

sudo apt update

```



\### Install Manager First



```

sudo apt install wazuh-manager -y

sudo systemctl enable wazuh-manager --now

systemctl status wazuh-manager

```



\### Install Agent Next



```

sudo apt install wazuh-agent -y

sudo systemctl enable wazuh-agent --now

systemctl status wazuh-agent

```



---



\## 3️⃣ SSH Setup for `hacker` User



\### Ensure User Exists



```

cat /etc/passwd | grep hacker

sudo passwd hacker   # set password

sudo usermod -s /bin/bash hacker  # ensure shell is valid

```



\### Install and Start SSH Server



```

sudo apt install openssh-server -y

sudo systemctl enable ssh --now

sudo systemctl status ssh

```



\### SSH from Windows CMD



```

ssh hacker@<KALI\_IP>

```



\* Replace `<KALI\_IP>` with your VM’s IP (check with `ip a`)



---



\## 4️⃣ Network Check Commands



```

ip a                  # view all interfaces \& IPs

ip route              # view routing table

ss -tuln              # check active connections

nmcli device status   # network interface status

cat /etc/resolv.conf   # DNS servers

```



---



\## 5️⃣ Verify Wazuh Services



```

systemctl status wazuh-manager

systemctl status wazuh-agent

sudo tail -f /var/ossec/logs/ossec.log

```



---



\## 6️⃣ Mini Challenge – Failed SSH Login



1\. Attempt failed login:



```

ssh testuser@127.0.0.1

```



(enter wrong password 2–3 times)



2\. Check Wazuh logs:



```

sudo tail -f /var/ossec/logs/ossec.log

```



3\. Check SSH logs via systemd:



```

sudo journalctl -u ssh -r | head -n 20

```



> This is the \*\*complete Day 13 material\*\* in a single file: repository fixes, Wazuh Manager \& Agent installation, SSH setup for `hacker`, network commands, verification, and mini challenge.



