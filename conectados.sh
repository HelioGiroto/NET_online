#!/bin/bash

ips=$(hostname -I)

sliceIp=$(echo $ips | cut -d'.' -f 1,2,3)
 
nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//'


# Autor: Helio Giroto
