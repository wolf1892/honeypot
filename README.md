# Deception that fights back
Honeypot that got tired of defending now it fights back. Simple but effective, this honeypot uses BAP as a template (credit to: Bjeborn) but this also attacks back at the host, the honeypot gets the wordlist used by the attacker and uses that to attack back at the attacker on his network open ports, the honeypot also looks for vulnerabilities on the open ports and attack them using port defined exploits. The honeypot has an additional function that looks for DOS attack (ICMP only) if detected it sends the IP to the botnets (Bunch of ec2) and initializes its own DDOS attack against the IP for limited time spawn. Additional the honeypot also backups the wordlist used by the attacker in format of uname and pass, so honeypot can have its own wordlist comb.

# PI and crontab
Cron jobs are used to run active scripts on the raspberry pi, since the honeypot is lightweight it has no issues running on any low config machines. However cron is used to monitor and triggers every 2 minute for any active attacks, if found it attacks back and removes the IP from the attack list so it doesn't loops.

# Flowchart

![alt text](https://github.com/wolf1892/offensive-honeypot/blob/main/bap.png?raw=true)



# What's missing?
-Rev_DOS script is removed.
-Exploits are removed.

# FYI
Don't deploy this honeypot on web, this may land you in trouble. Remember you don't know where is the traffic coming from. Only for POC.
