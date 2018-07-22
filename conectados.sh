#!/bin/bash

ips=$(hostname -I)

sliceIp=$(echo $ips | cut -d'.' -f 1,2,3)
 
# nmap -sP $sliceIp.*

echo "Conectados agora: "
nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//; 1d' 

# Watching your Net:
while :
do
	qtosAnterior=$(nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//; 1d' | wc -l)
	sleep 5m
	qtosAgora=$(nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//; 1d' | wc -l)
	if [ $qtosAgora -gt $qtosAnterior ]	
	then
		echo; echo "Um novo usuário se conectou na sua Rede!!!"
		aplay beep.mp3
		nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//; 1d' 
		echo
	fi
done

# Autor: Helio Giroto
