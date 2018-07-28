#!/bin/bash

# Este scritp usa o protocolo 	ICMP para se comunicar com todos os nodes da rede
# use somente redes de classe C, não utilize subredes!

# Limpa a shell para execução do scritp
clear

# Cria uma variavel com path para um arquivo temporarios
spawn='/tmp/NET'
# Rede a ser avaliada pelo usuario
echo -e "\nEntre com a rede: exemplo 192.168.200.0/24"
read addr

# Cria o arquivo temporario de arquivos 
> $spawn

# envia a rede a ser avaliada para um arquivo temporario

echo $addr > $spawn

# pega a rede informada
net=`awk -F. '{print $3}' $spawn`

# pega a rota da rede informada
rota=`ip r | grep $(cat $spawn) | awk -F" " '{print $9}'`

if [ "$rota" == '' ]
   then 
      echo -e "\nEste node não possui uma rota para $addr\n"
      exit
   else
      echo -e "\nLista de Hosts respondendos ao ICMP na rede:"
      for (( ip=1; ip<255; ip++ ))
#      for ip in seq 1 254
         do
             ping -c 1 192.168.$net.$ip | grep 'ttl=64' | cut -d' ' -f4
         done
fi
echo $net
echo $rot

rota2=$(ip r | grep $(cat $spawn) | awk -F" " '{print $9}')
echo $rota2

