#!/bin/bash

# Descobre o nro de ip da rede local:
ips=$(hostname -I)

# Fatia apenas a parte necessária para varrer...:
sliceIp=$(echo $ips | cut -d'.' -f 1,2,3)

# Procura quem está conectado na sua rede:   
nmap -sP $sliceIp.* | grep report | sed 's/Nmap scan report for//'

# Autor: Helio Giroto
