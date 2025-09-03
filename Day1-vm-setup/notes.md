#use different commands while setting ssh: 
#first go to setting of VM, go to networking then select NAT, after that go to advanced setting and add rule, Name: ssh, prottocol: TCP, hostport: 2222, guessport: 22
#go to terminal and put some commands for configuration 
sudo systemctl status ssh
#the ssh was disable then enable it with another command:
sudo systemctl enable ssh
#I face problem while connecting with ssh from my host. Then give another command
ssh localhost 
sudo ufw allow ssh 
#After that I successfully connect with linux by using powershell form host