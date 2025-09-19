\# 📅 Day 24 — Log Analysis \& Correlation with Wazuh



\## 🎯 Goals



\* Learn how Wazuh ingests and correlates system logs.

\* Practice searching and filtering logs for suspicious activity.

\* Detect brute-force SSH attacks using correlation rules.

\* Document suspicious logins and map them to attacker IPs.



---



\## 🔹 Step 1: Review Linux Authentication Logs



Check authentication logs:



```bash

sudo cat /var/log/auth.log | grep "Failed password"

sudo cat /var/log/auth.log | grep "Accepted password"

```



---



\## 🔹 Step 2: Filter Logs by User



Check attempts for user `hacker`:



```bash

sudo grep "hacker" /var/log/auth.log

```



---



\## 🔹 Step 3: Detect Attacker IPs



List IPs with failed logins:



```bash

sudo grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr

```



Example output:



```

15  192.168.1.105

4   10.186.243.22

```



---



\## 🔹 Step 4: Wazuh Correlation Rule for Brute Force



📄 File: `/var/ossec/etc/rules/local\_rules.xml`



```xml

<group name="ssh,">

&nbsp; <rule id="100100" level="10">

&nbsp;   <decoded\_as>sshd</decoded\_as>

&nbsp;   <field name="status">FAILED</field>

&nbsp;   <description>Possible SSH brute force attack</description>

&nbsp;   <group>authentication\_failures,</group>

&nbsp;   <frequency>5</frequency>

&nbsp;   <timeframe>60</timeframe>

&nbsp; </rule>

</group>

```



Restart Wazuh:



```bash

sudo systemctl restart wazuh-manager

```



---



\## 🔹 Step 5: Test the Detection



Simulate brute-force with wrong SSH attempts:



```bash

ssh hacker@<target-ip>

\# Enter wrong password 5 times

```



---



\## 🔹 Step 6: Check Wazuh Alerts



Check alerts:



```bash

sudo tail -f /var/ossec/logs/alerts/alerts.json

```



Example alert:



```json

{

&nbsp; "rule": {

&nbsp;   "id": "100100",

&nbsp;   "level": 10,

&nbsp;   "description": "Possible SSH brute force attack"

&nbsp; },

&nbsp; "agent": {

&nbsp;   "id": "000",

&nbsp;   "name": "your-server"

&nbsp; },

&nbsp; "data": {

&nbsp;   "srcip": "192.168.1.105"

&nbsp; }

}

```



---



\## 📌 Documentation Summary



\* Extracted \*\*failed SSH attempts\*\* with attacker IPs.

\* Tracked \*\*suspicious user login activity\*\*.

\* Built a \*\*custom Wazuh brute-force rule\*\*.

\* Confirmed alerts in \*\*alerts.json\*\*.



---



✅ End of \*\*Day 24: Log Analysis \& Correlation\*\*.

\# 📅 Day 24 — Log Analysis \& Correlation with Wazuh



\## 🎯 Goals



\* Learn how Wazuh ingests and correlates system logs.

\* Practice searching and filtering logs for suspicious activity.

\* Detect brute-force SSH attacks using correlation rules.

\* Document suspicious logins and map them to attacker IPs.



---



\## 🔹 Step 1: Review Linux Authentication Logs



Check authentication logs:



```bash

sudo cat /var/log/auth.log | grep "Failed password"

sudo cat /var/log/auth.log | grep "Accepted password"

```



---



\## 🔹 Step 2: Filter Logs by User



Check attempts for user `hacker`:



```bash

sudo grep "hacker" /var/log/auth.log

```



---



\## 🔹 Step 3: Detect Attacker IPs



List IPs with failed logins:



```bash

sudo grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c | sort -nr

```



Example output:



```

15  192.168.1.105

4   10.186.243.22

```



---



\## 🔹 Step 4: Wazuh Correlation Rule for Brute Force



📄 File: `/var/ossec/etc/rules/local\_rules.xml`



```xml

<group name="ssh,">

&nbsp; <rule id="100100" level="10">

&nbsp;   <decoded\_as>sshd</decoded\_as>

&nbsp;   <field name="status">FAILED</field>

&nbsp;   <description>Possible SSH brute force attack</description>

&nbsp;   <group>authentication\_failures,</group>

&nbsp;   <frequency>5</frequency>

&nbsp;   <timeframe>60</timeframe>

&nbsp; </rule>

</group>

```



Restart Wazuh:



```bash

sudo systemctl restart wazuh-manager

```



---



\## 🔹 Step 5: Test the Detection



Simulate brute-force with wrong SSH attempts:



```bash

ssh hacker@<target-ip>

\# Enter wrong password 5 times

```



---



\## 🔹 Step 6: Check Wazuh Alerts



Check alerts:



```bash

sudo tail -f /var/ossec/logs/alerts/alerts.json

```



Example alert:



```json

{

&nbsp; "rule": {

&nbsp;   "id": "100100",

&nbsp;   "level": 10,

&nbsp;   "description": "Possible SSH brute force attack"

&nbsp; },

&nbsp; "agent": {

&nbsp;   "id": "000",

&nbsp;   "name": "your-server"

&nbsp; },

&nbsp; "data": {

&nbsp;   "srcip": "192.168.1.105"

&nbsp; }

}

```



---



\## 📌 Documentation Summary



\* Extracted \*\*failed SSH attempts\*\* with attacker IPs.

\* Tracked \*\*suspicious user login activity\*\*.

\* Built a \*\*custom Wazuh brute-force rule\*\*.

\* Confirmed alerts in \*\*alerts.json\*\*.



---



✅ End of \*\*Day 24: Log Analysis \& Correlation\*\*.



