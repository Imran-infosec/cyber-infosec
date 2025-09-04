 # Add new user through the following command
 sudo adduser hacker
 
 # give root privileges to new user
 sudo usermod -aG sudo hacker

 # Configure ssh to disallow root login
 sudo nano /etc/ssh/sshd_config
 
 # change Permitrootlogin line with permitrootlogin no
 sudo systemctl restart ssh

 # Enable UFW firewall
 sudo ufw status
 sudo ufw enable
 sudo ufw allow 2222/tcp
 sudo ufw status numbered

 # Install fail2ban(basic intrusion protection)
sudo apt update
sudo apt install fail2ban -y
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
