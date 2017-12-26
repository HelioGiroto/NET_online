#!/bin/bash

###################################################
##  ASSIM QUE (O SINAL D)A INTERNET VOLTA        ## 
##      O ARQ. MP3 BEEP.MP3 TOCARÁ               ##
##   RENOMEIE ALGUM ARQ DA SUA PREFERÊNCIA       ##
##              PARA beep.mp3                    ##
##                                               ##
##          * Requer VLC instalado               ##
##        (se não: sudo apt install vlc)         ##
###################################################

while :
do 
  ping -c 1 www.google.com &> /dev/null 
  [ $? -eq 0 ] && cvlc --play-and-exit beep.mp3 || echo NADA
  sleep 3
done




# Autor: Helio Giroto
