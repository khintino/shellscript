#!/bin/bash

# Este script traz informacoes do sistema

#definicao de variaveis
hora=`date | cut -d' ' -f4`
tempo=`uptime | awk -F" " '{print $3}' | sed -e s'|,||g'`
users=`uptime | awk -F" " '{print $4}'`

#limpa a shell
clear

# Prompt de esolha - Menu

echo -e "\nEscolha a opção desejada\n"
echo 'Hora do Sistma            [1]'
echo 'Tempo de Sistema ligado   [2]'
echo 'Usuarios logados          [3]'
echo -e "Finalizar programa        [4]\n\n"
# recebe o valor de opcao
read opcao

case $opcao in
    1) 
	echo -e "\nHora do sistema: $hora\n";;
    2) 
	echo -e "\nO Sistema esta ligado a: $tempo\n";;
    3)
	echo -e "\nQuantidade de usuarios logados: $users\n";;
    4)
        echo "Bye Bay";;
    esac	
